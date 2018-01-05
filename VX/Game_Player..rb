class Game_Player < Game_Character

  CENTER_X = 640 / 2
  CENTER_Y = 480 / 2

  def initialize
    super
    @is_player = true
    @main_actor_id = $game_party.main_actor_id
    @last_inputs = []
    @last_input_count = 0
    @transferring = false
    @new_map_id = 0
    @new_x = 0
    @new_y = 0
    setup_new_main_character($game_actors[@main_actor_id].actor_id, false)
  end
  
  def actualize_data
    @is_player = true
  end
  
  def setup_new_main_character(id, new_player)
    h = @height
    setup(id)
    @y = @y+(h-@height)/2
    battler.check_auto_regen
    if new_player
      switch_flash
      battler.add_state(11, 900) if $game_temp.in_battle
      if $game_party.switch_by_death
        alive_members = $game_party.alive_members
        if battler.survivor_effect?
          duration = 2700-alive_members*900
          battler.add_state(7, duration)
          battler.add_state(8, duration)
          battler.add_state(9, duration)
        end
        battler.add_state(10, 120)
        $game_party.switch_by_death = false
      end
    end
  end
  
  def setup(id)
    send("setup#{id}")
    @id = id
    @pattern_count = 0
    @appearance_count = 0
    @need_refresh = true
  end
  
  def battler
    return $game_actors[@main_actor_id]
  end
  
  def reserve_transfer(map_id, x, y, direction)
    @transferring = true
    @new_map_id = map_id
    @new_x = x*32+16
    @new_y = y*32+32-@height/2
    if direction > 0
      @new_mirror = (direction == 4)
    else
      @new_mirror = nil
    end
  end
  
  def transfer?
    return @transferring
  end
  
  def perform_transfer
    return unless @transferring
    @transferring = false
    $game_map.setup(@new_map_id)
    clear_bullets_index
    finish_attack
    @running = false
    @jumping = false
    @in_air = false
    moveto(@new_x, @new_y)
    @mirror = @new_mirror if @new_mirror != nil
    @need_refresh = true
  end
  
  def screen_z
    return 60
  end
  
  def is_lock?
    return $game_temp.cannot_input
  end
  
  def center_x
    return (@x - CENTER_X)
  end
  
  def center_y
    return (@y - CENTER_Y)
  end
  
  def center_screen
    $game_map.set_display_pos(center_x, center_y)
  end
  
  def moveto(x, y)
    super(x, y)
    center_screen
  end
  
  def clear_bullets_index
    @bullets_index.clear
    @bullets_dot.clear
    @bullets_dot_count.clear
  end
  
  def clear_last_inputs
    @last_inputs.clear
  end
  
  def check_inputs
    if @last_input_count == 20
      clear_last_inputs
    end
    if sliding? or @interrupted
      return
    end
    input_make = true
    if I.t4
      @last_inputs.push(4)
    elsif I.t6
      @last_inputs.push(6)
    elsif I.t2
      @last_inputs.push(2)
    elsif I.t8
      @last_inputs.push(8)
    elsif I.ta
      @last_inputs.push(11)
    elsif I.tb
      @last_inputs.push(12)
    elsif I.tc
      @last_inputs.push(13)
    elsif I.tx
      @last_inputs.push(14)
    elsif I.ty
      @last_inputs.push(15)
    elsif I.tl
      @last_inputs.push(16)
    elsif I.tr
      @last_inputs.push(17)
    else
      input_make = false
    end
    if input_make
      @last_input_count = 0
    else
      @last_input_count += 1
    end
  end
  
  def try_hyper_mode?
    return I.ty
  end
  
  def try_left?
    return (I.p4 and not I.p6)
  end
  
  def try_right?
    return (I.p6 and not I.p4)
  end
  
  def try_down?
    return (I.p2 and not I.p8)
  end
  
  def try_up?
    return (I.p8 and not I.p2)
  end
  
  def try_lateral_slide?
    return (@last_input_count == 0 and 
    (@last_inputs[-2, 2] == [4, 4] or @last_inputs[-2, 2] == [6, 6]))
  end
  
  def try_down_slide?
    return (@last_input_count == 0 and @last_inputs[-2, 2] == [2, 2])
  end
  
  def try_guard?
    return I.p2
  end
  
  def try_jump?
    return I.tc
  end
  
  def try_jump_plus?
    return (I.pc or @force_jump)
  end
  
  def try_drift?
    return I.pc
  end
  
  def try_attack?
    return I.tx
  end
  
  def try_quickskill?
    if @last_input_count > 0 or @last_inputs.last != 14
      return 0
    end
    # 1
    if @last_inputs[-3, 2] == [8, 4] or @last_inputs[-3, 2] == [8, 6]
      if battler.quickskill_can_use?(0)
        return 1
      end
    end
    # 2
    if @last_inputs[-3, 2] == [2, 4] or @last_inputs[-3, 2] == [2, 6]
      if battler.quickskill_can_use?(1)
        return 2
      end
    end
    # 3
    if @last_inputs[-3, 2] == [2, 8]
      if battler.quickskill_can_use?(2)
        return 3
      end
    end
    # 4
    if @last_inputs[-3, 2] == [8, 8]
      if battler.quickskill_can_use?(3)
        return 4
      end
    end
    # 5
    if @last_inputs[-3, 2] == [8, 2]
      if battler.quickskill_can_use?(4)
        return 5
      end
    end
    # 6
    if @last_inputs[-4, 3] == [4, 6, 4] or 
      @last_inputs[-4, 3] == [6, 4, 6]
      if battler.quickskill_can_use?(5)
        return 6
      end
    end
    # 7
    if @last_inputs[-4, 3] == [8, 6, 8] or 
      @last_inputs[-4, 3] == [8, 4, 8]
      if battler.quickskill_can_use?(6)
        return 7
      end
    end
    return 0
  end
  
  def try_magic_cast?
    result = 0
    id = -1
    if I.tb
      if battler.spellcard_id.size == 1
        id = 0
      else
        if I.p2
          id = 3
        elsif I.p8
          id = 2
        elsif I.p4 or I.p6
          id = 1
        else
          id = 0
        end
      end
    end
    if id > -1
      if battler.spellcard_can_use?(id) and not battler.is_silent?
        result = id+1
      else
        Sound.play_buzzer
      end
    end
    return result
  end
  
  def continue_pulse?
    return I.pb
  end
  
  def try_change_character?
    if I.tl
      return -1
    elsif I.tr
      return 1
    end
    return 0
  end
  
  def make_hyper_mode
    if $game_party.hyper_count >= 24 or $game_temp.infinite_hyper
      super
    else
      Sound.play_buzzer
    end
  end
    
  def make_quickskill(index)
    battler.sp -= battler.quickskill_cost[index-1]
    super(index)
  end
  
  def make_cast
    $game_temp.spellcard_trigger = true
    battler.mp -= battler.spellcard_cost[@casting-1]
    super
  end
  
  def make_lateral_slide
    @sliding = @last_inputs[-1] ? @last_inputs[-1] : @mirror ? 4 : 6    
    super
    clear_last_inputs
  end
  
  def make_down_slide
    @sliding = 2
    super
    clear_last_inputs
  end
  
  def make_interruption
    Sound.play_interrupt
    super
  end
  
  def make_death(death_by_enemy)
    battler.mp = 0
    battler.sp = 0
    $game_temp.death_trigger = true
    super(death_by_enemy)
  end
  
  def end_attack
    if @skill
      if (c = battler.quickskill_id.index(@skill.id)) != nil
        battler.increment_quickskill_counter(c)
      elsif (c = battler.spellcard_id.index(@skill.id)) != nil
        battler.increment_spellcard_counter(c)
      end
    end
    super
  end
  
  def check_event_trigger
    for event in $game_map.events.values
      result = false
      if event.auto_trigger
        result = true
      elsif event.vertically_impassable
        result = (@x-event.x).abs <= event.hitbox_size
      elsif event.horizontally_impassable
        result = (@y-event.y).abs <= event.hitbox_size
      elsif event.hitbox_size > 0
        result = Math.hypot(
        event.x-@x, event.y-@y) <= event.hitbox_size
      end
      if result
        event.start
        if event.not_visible_unless_trigger
          event.appear
        end
      elsif event.not_visible_unless_trigger
        event.disappear
      end
    end
  end
  
  def check_item_trigger
    for item in $spriteset.items
      if item.active
        if item_taken?(item)
          make_item_gain(item.type)
          item.dispose
        end
      end
    end
  end
  
  def item_taken?(item)
    xA = @x.to_i
    byA = @y.to_i
    rA = @hitbox_aoe
    ryA = @hitbox_y_size
    min_yA = byA - ryA/2
    max_yA = byA + ryA/2
    xB = item.real_x.to_i
    yB = item.real_y.to_i
    rB = item.hitbox_size
    yA = (yB >= min_yA and yB <= max_yA) ? yB : yB < min_yA ? min_yA : max_yA
    d = Math.hypot(xB - xA, yB - yA)
    return (d <= rA + rB)
  end
  
  def make_item_gain(type)
    case type
    when 1
      $game_party.gain_gold(1)
      Sound.play_coin
    when 2
      $game_party.gain_gold(3)
      Sound.play_coin
    when 3
      $game_party.gain_gold(10)
      Sound.play_coin
    when 4
      $game_party.gain_gold(25)
      Sound.play_coin
    when 11
      battler.attack_effect(-100, [], [])
      if $game_system.enable_player_damage
        take_damage(100, true, false, 0)
      end
      heal_flash
      Sound.play_heal01
    when 12
      battler.attack_effect(-300, [], [])
      if $game_system.enable_player_damage
        take_damage(300, true, false, 0)
      end
      heal_flash
      Sound.play_heal01
    when 13
      battler.attack_effect(-1000, [], [])
      if $game_system.enable_player_damage
        take_damage(1000, true, false, 0)
      end
      heal_flash
      Sound.play_heal01
    when 21
      battler.mp += 100
      mp_flash
      Sound.play_heal02
    when 22
      battler.mp += 300
      mp_flash
      Sound.play_heal02
    when 31
      battler.add_state(7, 1200)
      white_flash
      Sound.play_regen
    when 32
      battler.add_state(8, 1200)
      white_flash
      Sound.play_power
    when 33
      battler.add_state(9, 1200)
      white_flash
      Sound.play_protection
    when 34
      battler.add_state(10, 360)
      white_flash
      Sound.play_invincibility
    when 41
      $game_party.hyper_count += 8
      hyper_point_flash
      Sound.play_hyper_point
    when 51
      $game_party.gain_ap(10)
      Sound.play_ap_gain
    when 52
      $game_party.gain_ap(25)
      Sound.play_ap_gain
    when 61
      make_interruption
      dmg = battler.is_invincible? ? 0 : battler.hp/4
      battler.attack_effect(dmg, [], [])
      battler.mp = 0
      battler.sp = 0
      if $game_system.enable_player_damage
        take_damage(dmg, false, false, 0)
      end
      cursed_flash
      Sound.play_curse
    when 101
      $game_party.wandering_soul += 1
      new_soul_flash
      $display.create_info(13, [1])
      Sound.play_new_soul
    when 111..114
      white_flash
      Sound.play_new_soul
    when 1001..2000
      w = $game_weapons[type-1000]
      w.owned = true
      $display.create_info(11, [w.name, w.icon_index])
      Sound.play_acquisition
    when 2001..3000
      a = $game_accessories[type-2000]
      a.owned = true
      $display.create_info(12, [a.name, a.icon_index])
      Sound.play_acquisition
    end
  end
  
  def check_move
    super
    n = try_change_character?
    if n != 0 and not sliding? and not @interrupted and 
      not battler.is_dead? and @casting == 0 and @attack_id == 0
      if battler.cannot_switch_players?
        Sound.play_buzzer
      else
        $game_temp.call_switch_menu = n
      end
    end
  end
  
  def update
    if $game_party.main_actor_id != @main_actor_id
      $game_temp.switch_trigger = true
      if battler
        battler.switch_players
        interrupt_all_bullets
      end
      @main_actor_id = $game_party.main_actor_id
      setup_new_main_character($game_actors[@main_actor_id].actor_id, true)
    end
    return if $game_temp.stop_time_count > 0 and $game_temp.stop_time_owner != self
    unless cannot_move?
      check_inputs
      check_move
      check_run
    end
    check_event_trigger
    check_item_trigger unless battler.is_dead?
    super
    center_screen unless $game_map.scrolling?
  end
end
