class Game_Event
  
  attr_reader   :list
  attr_reader   :id
  attr_reader   :x
  attr_reader   :y
  attr_reader   :opacity
  attr_reader   :pattern
  attr_reader   :mirror
  attr_reader   :character_name
  attr_reader   :hitbox_size
  attr_reader   :vertically_impassable
  attr_reader   :horizontally_impassable
  attr_reader   :not_visible_unless_trigger
  attr_reader   :is_new_bitmap
  attr_reader   :above
  attr_reader   :auto_trigger
  attr_reader   :reinit_self_switches
  attr_reader   :text
  attr_reader   :text_size
  
  def initialize(map_id, event)
    @map_id = map_id
    @event = event
    @id = @event.id
    moveto(@event.x*32+16, @event.y*32+16)
    @z = 40
    @pattern = 0
    clear_pattern
    @character_name = ""
    @mirror = false
    @hitbox_size = 0
    @vertically_impassable = false
    @horizontally_impassable = false
    @not_visible_unless_trigger = false
    @is_new_bitmap = false
    @above = false
    @auto_trigger = false
    @reinit_self_switches = false
    @text = ""
    @text_size = 24
    @erased = false
    code = @event.name
    for i in 0...code.size
      char = code[i, 1]
      if char == "W"
        @hitbox_size = code[i+1, 3].to_i
        i += 3
      elsif char == "V"
        @vertically_impassable = true
      elsif char == "H"
        @horizontally_impassable = true
      elsif char == "I"
        @not_visible_unless_trigger = true
      elsif char == "B"
        @is_new_bitmap = true
      elsif char == "U"
        @above = true
      elsif char == "A"
        @auto_trigger = true
      elsif char == "Z"
        @z = 41
      elsif char == "Y"
        @z = 70
      elsif char == "S"
        @reinit_self_switches = true
      end
    end
    if @not_visible_unless_trigger
      @opacity = 0
    else
      @opacity = 255
    end
    refresh
  end
  
  def moveto(x, y)
    @x = x
    @y = y
  end
  
  def screen_x
    return @x.to_i - $game_map.display_x
  end
  
  def screen_y
    return @y.to_i - $game_map.display_y
  end
  
  def screen_z
    return @z
  end
  
  def appear
    @opacity = Math.min(@opacity+10, 255)
  end
  
  def disappear
    @opacity = Math.max(@opacity-10, 0)
    if @opacity == 0
      @pattern_count = 0
    end
  end
  
  def clear_pattern
    @pattern_change_speed = 0
    @sprite_loop = false
    @pattern_count = 0
    @pattern_max = 1
  end
  
  def start
    return if @list == nil or @list.size < 2
    return if @interpreter != nil and @interpreter.running?
    @interpreter = Game_Interpreter.new
  end
  
  def erase
    @erased = true
    refresh
  end
  
  def conditions_met?(page)
    c = page.condition
    if c.switch1_valid
      return false if $game_switches[c.switch1_id] == true # inversé
    end
    if c.switch2_valid
      return false if $game_switches[c.switch2_id] == false
    end
    if c.variable_valid
      return false if $game_variables[c.variable_id] < c.variable_value
    end
    if c.self_switch_valid
      key = [@map_id, @event.id, c.self_switch_ch]
      return false if $game_self_switches[key] != true
    end
    if c.item_valid
      item = $data_items[c.item_id]
      return false if $game_party.item_number(item) == 0
    end
    if c.actor_valid
      actor = $game_actors[c.actor_id]
      return false unless $game_party.members.include?(actor)
    end
    return true
  end
  
  def setup(new_page)
    @page = new_page
    @interpreter = nil
    clear_pattern
    if @page == nil
      @character_name = ""
      @list = nil
    else
      @character_name = @page.graphic.character_name
      @pattern = @page.graphic.pattern
      @mirror = @page.direction_fix
      if @page.step_anime
        max = @character_name[-2, 2].to_i
        t = 512/(2**@page.move_speed)
        speed = max == 0 ? 0 : t/max
        pattern_change(speed, max, true)
        @pattern_count = rand(@pattern_max*@pattern_change_speed)
      end
      @list = @page.list
    end
  end
  
  def sprite_change(sprite)
    @character_name = sprite
  end
  
  def pattern_change(change_speed, max, loop)
    @pattern_change_speed = change_speed
    @pattern_max = max
    @sprite_loop = loop
  end
  
  def mirror_change(mirror)
    @mirror = mirror
  end
  
  def text_change(text, text_size)
    @text = text
    @text_size = text_size
  end
  
  def refresh
    new_page = nil
    unless @erased
      for page in @event.pages.reverse
        next unless conditions_met?(page)
        new_page = page
        break
      end
    end
    if new_page != @page
      setup(new_page)
    end
  end
  
  def check_pattern
    return if @pattern_change_speed < 1 or $game_temp.stop_time_count > 0
    @pattern = @pattern_count/@pattern_change_speed
    if @sprite_loop
      @pattern %= @pattern_max
    else
      @pattern = Math.min(@pattern, @pattern_max-1)
    end
    @pattern_count += 1
  end
  
  def update
    if @list or not @not_visible_unless_trigger
      check_pattern
    end
    if @interpreter
      if @interpreter.running?
        @interpreter.update
      else
        @interpreter.setup(@list, @event.id)
      end
    end
    if @interpreter and not @interpreter.running?
      @interpreter = nil
    end
  end
end
