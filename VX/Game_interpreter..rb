class Game_Interpreter
  
  def initialize(depth = 0)
    @depth = depth
    if @depth > 100
      print("Common event call has exceeded maximum limit.")
      exit
    end
    @other_vars = []
    clear
  end
  
  def clear
    @map_id = 0
    @event_id = 0
    @list = nil
    @index = 0
    @message_waiting = false
    @wait_count = 0
    @max_enemies = -1
    @wait_no_boss = false
    @child_interpreter = nil
    @branch = {}
  end
  
  def setup(list, event_id = 0)
    clear
    @map_id = $game_map.map_id
    @event_id = event_id
    @list = list
    @index = 0
    update
  end
  
  def running?
    return @list != nil
  end
  
  def update
    loop do
      if @child_interpreter
        if @child_interpreter.running?       
          @child_interpreter.update
          return
        else
          @child_interpreter = nil
        end
      end
      if @message_waiting
        if $display.message_spriteset.wait_for_input
          return
        else
          @message_waiting = false
        end
      end
      if @wait_count > 0
        @wait_count -= 1 if $game_temp.stop_time_count == 0
        return
      end
      if @wait_no_boss
        for enemy in $game_temp.enemies
          if enemy.boss and not enemy.is_dead?
            return
          end
        end
        @wait_no_boss = false
      end
      if @max_enemies > -1
        if $game_temp.enemies.size > @max_enemies
          return
        else
          @max_enemies = -1
        end
      end
      return if execute_command == false
      @index += 1
    end
  end
  
  def screen
    return $game_map.screen
  end
  
  def execute_command
    if @index >= @list.size-1
      command_end
      return false
    else
      @params = @list[@index].parameters
      @indent = @list[@index].indent
      case @list[@index].code
      when 101  # Show Text
        return command_101
      when 111  # Conditional Branch
        return command_111
      when 411  # Else
        return command_411
      when 112  # Loop
        return command_112
      when 413  # Repeat Above
        return command_413
      when 113  # Break Loop
        return command_113
      when 115  # Exit Event Processing
        return command_115
      when 117  # Call Common Event
        return command_117
      when 118  # Label
        return command_118
      when 119  # Jump to Label
        return command_119
      when 121  # Control Switches
        return command_121
      when 122  # Control Variables
        return command_122
      when 123  # Control Self Switch
        return command_123
      when 125  # Change Gold
        return command_125
      when 201  # Transfer Player
        return command_201
      when 214  # Erase Event
        return command_214
      when 221  # Fadeout Screen
        return command_221
      when 222  # Fadein Screen
        return command_222
      when 223  # Tint Screen
        return command_223
      when 224  # Flash Screen
        return command_224
      when 225  # Shake Screen
        return command_225
      when 230  # Wait
        return command_230
      when 241  # Play BGM
        return command_241
      when 242  # Fadeout BGM
        return command_242
      when 245  # Play BGS
        return command_245
      when 246  # Fadeout BGS
        return command_246
      when 249  # Play ME
        return command_249
      when 250  # Play SE
        return command_250
      when 251  # Stop SE
        return command_251
      when 314  # Full Recover
        return command_314
      when 355  # Script
        return command_355
      else      # Other
        return true
      end
    end
  end
  
  def command_end
    @list = nil
  end
  
  def command_skip
    while @list[@index+1].indent > @indent
      @index += 1
    end
  end
  
  def get_character(param)
    case param
    when -1
      return $game_player
    when 0
      events = $game_map.events
      return events == nil ? nil : events[@event_id]
    else
      events = $game_map.events
      return events == nil ? nil : events[param]
    end
  end
  
  def operate_value(operation, operand_type, operand)
    if operand_type == 0
      value = operand
    else
      value = $game_variables[operand]
    end
    if operation == 1
      value = -value
    end
    return value
  end
  
  def command_101
    @index += 1
    unless $display.message_spriteset
      $display.message_spriteset = Spriteset_Message.new
    end
    i = 0
    while @list[@index].code == 401
      $display.message_spriteset.texts += "\n" if i > 0
      $display.message_spriteset.texts += @list[@index].parameters[0]
      i += 1
      @index += 1
    end
    $display.message_spriteset.new_text = true
    @message_waiting = true
    $display.message_spriteset.wait_for_input = true
    return false
  end
  
  def command_111
    result = false
    case @params[0]
    when 0  # Switch
      result = ($game_switches[@params[1]] == (@params[2] == 0))
    when 1  # Variable
      value1 = $game_variables[@params[1]]
      if @params[2] == 0
        value2 = @params[3]
      else
        value2 = $game_variables[@params[3]]
      end
      case @params[4]
      when 0  # value1 is equal to value2
        result = (value1 == value2)
      when 1  # value1 is greater than or equal to value2
        result = (value1 >= value2)
      when 2  # value1 is less than or equal to value2
        result = (value1 <= value2)
      when 3  # value1 is greater than value2
        result = (value1 > value2)
      when 4  # value1 is less than value2
        result = (value1 < value2)
      when 5  # value1 is not equal to value2
        result = (value1 != value2)
      end
    when 2  # Self switch
      if @event_id > 0
        key = [@map_id, @event_id, @params[1]]
        if @params[2] == 0
          result = ($game_self_switches[key] == true)
        else
          result = ($game_self_switches[key] != true)
        end
      end
    when 7  # Gold
      if @params[2] == 0
        result = ($game_party.gold >= @params[1])
      else
        result = ($game_party.gold <= @params[1])
      end
    when 11  # Button
      result = Input.press?(@params[1])
    when 12  # Script
      result = eval(@params[1])
    end
    @branch[@indent] = result     # Store determination results in hash
    if @branch[@indent] == true
      @branch.delete(@indent)
      return true
    end
    return command_skip
  end
  
  def command_411
    if @branch[@indent] == false
      @branch.delete(@indent)
      return true
    end
    return command_skip
  end
  
  def command_112
    return true
  end
  
  def command_413
    begin
      @index -= 1
    end until @list[@index].indent == @indent
    return true
  end
  
  def command_113
    loop do
      @index += 1
      if @index >= @list.size-1
        return true
      end
      if @list[@index].code == 413 and    # Command [Repeat Above]
         @list[@index].indent < @indent   # Indent is shallow
        return true
      end
    end
  end
  
  def command_115
    command_end
    return true
  end
  
  def command_117
    common_event = $data_common_events[@params[0]]
    if common_event != nil
      @child_interpreter = Game_Interpreter.new(@depth + 1)
      @child_interpreter.setup(common_event.list, @event_id)
    end
    return true
  end
  
  def command_118
    return true
  end
  
  def command_119
    label_name = @params[0]
    for i in 0...@list.size
      if @list[i].code == 118 and @list[i].parameters[0] == label_name
        @index = i
        return true
      end
    end
    return true
  end
  
  def command_121
    for i in @params[0] .. @params[1]   # Batch control
      $game_switches[i] = (@params[2] == 0)
    end
    $game_map.need_refresh = true
    return true
  end
  
  def command_122
    value = 0
    case @params[3]  # Operand
    when 0  # Constant
      value = @params[4]
    when 1  # Variable
      value = $game_variables[@params[4]]
    when 2  # Random
      value = @params[4] + rand(@params[5] - @params[4] + 1)
    when 7  # Other
      case @params[4]
      when 0  # map ID
        value = $game_map.map_id
      when 1  # number of party members
        value = $game_actors.size
      when 2  # gold
        value = $game_party.gold
      when 4  # play time
        value = Graphics.frame_count / Graphics.frame_rate
      end
    end
    for i in @params[0] .. @params[1]   # Batch control
      case @params[2]  # Operation
      when 0  # Set
        $game_variables[i] = value
      when 1  # Add
        $game_variables[i] += value
      when 2  # Sub
        $game_variables[i] -= value
      when 3  # Mul
        $game_variables[i] = value
      when 4  # Div
        $game_variables[i] /= value if value != 0
      when 5  # Mod
        $game_variables[i] %= value if value != 0
      end
      if $game_variables[i] > 99999999    # Maximum limit check
        $game_variables[i] = 99999999
      end
      if $game_variables[i] < -99999999   # Minimum limit check
        $game_variables[i] = -99999999
      end
    end
    $game_map.need_refresh = true
    return true
  end
  
  def command_123
    if @event_id > 0
      key = [@map_id, @event_id, @params[0]]
      $game_self_switches[key] = (@params[1] == 0)
    end
    $game_map.need_refresh = true
    return true
  end
  
  def command_125
    value = operate_value(@params[0], @params[1], @params[2])
    $game_party.gain_gold(value)
    return true
  end
  
  def command_201
    if $game_player.transfer?
      return false
    end
    if @params[0] == 0                      # Direct designation
      map_id = @params[1]
      x = @params[2]
      y = @params[3]
      direction = @params[4]
    else                                    # Designation with variables
      map_id = $game_variables[@params[1]]
      x = $game_variables[@params[2]]
      y = $game_variables[@params[3]]
      direction = @params[4]
    end
    $game_player.reserve_transfer(map_id, x, y, direction)
    @index += 1
    return false
  end
  
  def command_214
    if @event_id > 0
      $game_map.events[@event_id].erase
    end
    @index += 1
    return false
  end
  
  def command_221
    screen.start_fadeout(30)
    return true
  end
  
  def command_222
    screen.start_fadein(30)
    return true
  end
  
  def command_223
    screen.start_tone_change(@params[0], @params[1])
    @wait_count = @params[1] if @params[2]
    return true
  end
  
  def command_224
    screen.start_flash(@params[0], @params[1])
    @wait_count = @params[1] if @params[2]
    return true
  end
  
  def command_225
    screen.start_shake([@params[0], @params[1], @params[2], 0, nil])
    @wait_count = @params[2] if @params[3]
    return true
  end
  
  def command_230
    @wait_count = @params[0]
    return true
  end
  
  def command_241
    $game_temp.play_bgm(@params[0].name)
    return true
  end
  
  def command_242
    $game_temp.bgm_fade(@params[0] * 1000)
    return true
  end
  
  def command_245
    $game_temp.play_bgs(@params[0].name)
    return true
  end
  
  def command_246
    $game_temp.bgs_fade(@params[0] * 1000)
    return true
  end
  
  def command_249
    Audio.se_play("Audio/ME/" + @params[0].name, $game_system.music_volume)
    return true
  end
  
  def command_250
    Audio.se_play("Audio/SE/" + @params[0].name, $game_system.sound_volume)
    return true
  end
  
  def command_251
    Audio.se_stop
    return true
  end
  
  def command_314
    for actor in $game_actors
      actor.full_recover
    end
    return true
  end
  
  def command_355
    script = @list[@index].parameters[0] + "\n"
    loop do
      if @list[@index+1].code == 655        # Second line of script and after
        script += @list[@index+1].parameters[0] + "\n"
      else
        break
      end
      @index += 1
    end
    eval(script)
    return true
  end
  
  def command_sprite_change(sprite)
    ev = get_character(0)
    ev.sprite_change(sprite)
  end
  
  def command_pattern_change(change_speed, max, loop)
    ev = get_character(0)
    ev.pattern_change(change_speed, max, loop)
  end
  
  def command_mirror_change(mirror)
    ev = get_character(0)
    ev.mirror_change(mirror)
  end
  
  def command_text_change(text, text_size)
    ev = get_character(0)
    ev.text_change(text, text_size)
  end
  
  def command_wait_max_enemies(max_enemies)
    @max_enemies = max_enemies
  end
  
  def command_wait_no_boss
    @wait_no_boss = true
  end
  
  def command_initialize_message(ls_name, ls_pattern, rs_name, rs_pattern, speaker)
    unless $display.message_spriteset
      $display.message_spriteset = Spriteset_Message.new
    end
    $display.message_spriteset.initialize_message(
    ls_name, ls_pattern, rs_name, rs_pattern, speaker)
  end
  
  def command_set_message(line_number)
    unless $display.message_spriteset
      $display.message_spriteset = Spriteset_Message.new
    end
    n = line_number-1
    for i in 0...4
      break if lang::DIALOGS[n+i] == nil
      text = lang::DIALOGS[n+i].dup
      if text and not text.empty?
        $display.message_spriteset.texts += "\n" if i > 0
        $display.message_spriteset.texts += text
      end
    end
    $display.message_spriteset.new_text = true
    @message_waiting = true
    $display.message_spriteset.wait_for_input = true
  end
  
  def command_terminate_message
    @message_waiting = false
    if $display.message_spriteset
      $display.message_spriteset.terminate_message
      $display.message_spriteset.wait_for_input = false
    end
  end
  
  def command_create_boss_display
    $display.create_boss_spriteset
  end
  
  def command_terminate_boss_display
    $display.terminate_boss_spriteset
  end
  
  def command_scroll(x, y, time, wait)
    $game_map.make_scroll(x, y, time, wait)
  end
  
  def kekkai_real_x(index)
    for kekkai in $spriteset.kekkai
      if kekkai.index == index
        return kekkai.real_x
      end
    end
    return 0
  end
  
  def new_item(x, y, drop_mode, type)
    $spriteset.create_item(x, y, drop_mode, type)
  end
  
  def change_weather(type, power, duration)
    $game_map.screen.weather(type, power, duration)
  end
end
