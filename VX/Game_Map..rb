class Game_Map
  
  attr_reader   :screen
  attr_reader   :display_x
  attr_reader   :display_y
  attr_reader   :parallax_name
  attr_reader   :map_name
  attr_reader   :events
  attr_reader   :ethereal
  attr_accessor :terrain_tags
  attr_accessor :passages
  attr_accessor :lateral_wind
  attr_accessor :updraft
  attr_accessor :underwater
  attr_accessor :need_refresh
  
  def initialize
    @screen = Game_Screen.new
    @map_id = 0
    @display_x = 0
    @display_y = 0
    @scroll_gap_x = 0
    @scroll_gap_y = 0
    @new_display_x = 0
    @new_display_y = 0
    @scroll_count = 0
    @scroll_wait = 0
    @scroll_max = 0
  end
  
  def setup(map_id)
    if @map_id > 0
      reinit_self_switches
      @screen.start_fadein(30)
    end
    if $game_temp.black_screen
      $game_temp.black_screen = false
      @screen.black_screen
    end
    @map_id = map_id
    @map = load_data(sprintf("Data/Map%03d.rvdata", @map_id))
    @display_x = 0
    @display_y = 0
    @scroll_count = 0
    @scroll_wait = 0
    @scroll_max = 0
    @map_name = $data_map_infos[@map_id].name.dup
    @lateral_wind = @map_name.slice!(/\\l/)
    @updraft = @map_name.slice!(/\\a/)
    @underwater = @map_name.slice!(/\\u/)
    @ethereal = @map_name.slice!(/\\e/)
    w = @map_name.slice!(/\\[Ww]\[([0-9]+)\]/) ? $1.to_i : 0
    @screen.weather(w/10, w%10, 0)
    tone_change = @map_name.slice!(/\\[Cc]\[([0123456789ABCDEFabcdef]+)\]/)
    if tone_change and $1.size == 8
      tone = Tone.new(-256+$1[0, 2].to_i(16)*2, -256+$1[2, 2].to_i(16)*2, 
      -256+$1[4, 2].to_i(16)*2, $1[6, 2].to_i(16))
      @screen.start_tone_change(tone, 0)
    end
    clear_temp_borders
    setup_events
    setup_parallax
    @need_refresh = false
  end
  
  def reinit_self_switches
    for event in @events.values
      if event.reinit_self_switches
        key = [@map_id, event.id, "A"]
        $game_self_switches[key] = false
        key = [@map_id, event.id, "B"]
        $game_self_switches[key] = false
        key = [@map_id, event.id, "C"]
        $game_self_switches[key] = false
        key = [@map_id, event.id, "D"]
        $game_self_switches[key] = false
      end
    end
  end
  
  def setup_events
    @events = {}
    for i in @map.events.keys
      @events[i] = Game_Event.new(@map_id, @map.events[i])
    end
  end
  
  def setup_parallax
    @parallax_name = @map.parallax_name
    @parallax_loop_x = @map.parallax_loop_x
    @parallax_loop_y = @map.parallax_loop_y
    @parallax_sx = @map.parallax_sx
    @parallax_sy = @map.parallax_sy
    @parallax_x = 0
    @parallax_y = 0
  end
  
  def setup_temp_borders(min, max)
    @temp_border_min = min-320
    @temp_border_max = max-320
    @temp_border_fadein_count = 80
  end
  
  def break_temp_borders
    @temp_border_fadeout_count = 80
  end
  
  def clear_temp_borders
    @temp_border_min = nil
    @temp_border_max = nil
    @temp_border_fadein_count = 0
    @temp_border_fadeout_count = 0
  end
  
  def display_x_limit(x)
    min = @temp_border_min ? Math.max(@temp_border_min, 0) : 0
    max = @temp_border_max ? Math.min(@temp_border_max, (@map.width-20)*32) : 
    (@map.width-20)*32
    return Math.middle(min, x, max)
  end
  
  def display_y_limit(y)
    return Math.middle(0, y, (@map.height-15)*32)
  end
  
  def set_display_pos(x, y)
    @display_x = display_x_limit(x)
    @display_y = display_y_limit(y)
    @parallax_x = @display_x
    @parallax_y = @display_y
  end
  
  def calc_parallax_x(bitmap)
    if bitmap == nil
      return 0
    elsif @parallax_loop_x
      w = 0
      if loop_horizontal? # parallax positionné au plus à droite
        w2 = @map.width * 32 - 640
        w = bitmap.width-(@map.width*32)+(w2*(16-@parallax_sx)/16)
      end
      return w + @parallax_x * @parallax_sx / 16
    else
      w1 = bitmap.width - 640
      w2 = @map.width * 32 - 640
      if w1 <= 0 or w2 <= 0
        return 0
      else
        return @parallax_x * w1 / w2
      end
    end
  end
  
  def calc_parallax_y(bitmap)
    if bitmap == nil
      return 0
    elsif @parallax_loop_y
      h = 0
      if loop_vertical? # parallax positionné au plus bas
        h2 = @map.height * 32 - 480
        h = bitmap.height-(@map.height*32)+(h2*(16-@parallax_sy)/16)
      end
      return h + @parallax_y * @parallax_sy / 16
    else
      h1 = bitmap.height - 480
      h2 = @map.height * 32 - 480
      if h1 <= 0 or h2 <= 0
        return 0
      else
        return @parallax_y * h1 / h2
      end
    end
  end
  
  def scrolling?
    return (@scroll_count > 0 or @scroll_wait > 0 or @scroll_wait == -1)
  end
  
  def map_id
    return @map_id
  end
  
  def width
    return @map.width
  end
  
  def height
    return @map.height
  end
  
  def loop_horizontal?
    return (@map.scroll_type == 2 or @map.scroll_type == 3)
  end
  
  def loop_vertical?
    return (@map.scroll_type == 1 or @map.scroll_type == 3)
  end
  
  def data
    return @map.data
  end
  
  def terrain_tag(x, y)
    if @map_id != 0 && @terrain_tags
      for i in [2, 1, 0]
        tile_id = data[x, y, i]
        if tile_id == nil
          return 0
        elsif @terrain_tags[tile_id] && @terrain_tags[tile_id] > 0
          return @terrain_tags[tile_id]
        end
      end
    end
    return 0
  end
  
  def tile_passable?(x, y, flag = 0x01)
    for i in [2, 1, 0]
      tile_id = @map.data[x, y, i]
      return false if tile_id == nil
      pass = @passages[tile_id]
      return false if pass & flag == flag
    end
    return true
  end
  
  def kekkai_passable?(x)
    for kekkai in $spriteset.kekkai
      diff_x = x-kekkai.real_x
      return false if diff_x > -17 and diff_x < 16
    end
    return true
  end
  
  def autoplay
    if @map.autoplay_bgm
      $game_temp.play_bgm(@map.bgm.name)
    end
    if @map.autoplay_bgs
      $game_temp.play_bgs(@map.bgs.name)
    end
  end
  
  def create_enemy(id, x, y, real_coord = false, autobump = false)
    rx = real_coord ? x : x*32+16
    ry = real_coord ? y : y*32+32
    $game_temp.enemies.push(Game_Enemy.new(id))
    $game_temp.ai.push(Game_AI.new(
    $game_temp.enemies.last, id, rx, ry, real_coord, autobump))
    $spriteset.create_new_enemy($game_temp.ai.last)
    $spriteset.create_new_states($game_temp.ai.last)
    $display.create_new_small_bar($game_temp.ai.last)
  end
  
  def make_scroll(x, y, time, wait)
    @new_display_x = display_x_limit(x)
    @new_display_y = display_y_limit(y)
    @scroll_gap_x = @new_display_x - @display_x
    @scroll_gap_y = @new_display_y - @display_y
    @scroll_count = time
    @scroll_wait = wait
    @scroll_max = @scroll_count
  end
  
  def refresh
    if @map_id > 0
      for event in @events.values
        event.refresh
      end
    end
    @need_refresh = false
  end
  
  def update
    refresh if @need_refresh
    update_temp_borders
    update_scroll if scrolling?
    update_events
    @screen.update
  end
  
  def update_temp_borders
    if @temp_border_fadein_count > 0
      @temp_border_fadein_count -= 1
      @temp_border_min += 4
      @temp_border_max -= 4
    end
    if @temp_border_fadeout_count > 0
      @temp_border_fadeout_count -= 1
      @temp_border_min -= 4
      @temp_border_max += 4
      if @temp_border_fadeout_count == 0
        clear_temp_borders
      end
    end
  end
  
  def update_scroll
    if @scroll_count > 0
      @scroll_count -= 1
      @display_x = @new_display_x - @scroll_gap_x*@scroll_count/@scroll_max
      @display_y = @new_display_y - @scroll_gap_y*@scroll_count/@scroll_max      
      @display_x = display_x_limit(@display_x)
      @display_y = display_y_limit(@display_y)
      @parallax_x = @display_x
      @parallax_y = @display_y
    elsif @scroll_wait > 0
      @scroll_wait -= 1
    end
  end
    
  def update_events
    for event in @events.values
      event.update
    end
  end
end
