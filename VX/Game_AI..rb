class Game_AI < Game_Character
  
  def initialize(enemy, id, x, y, real_coord, autobump)
    super()
    @enemy = enemy
    @id = id
    @count = battler.action_frequency > 1 ? 
    rand(battler.action_frequency) : 0
    @action = nil
    @ignore_action = false
    @force_tries = 0
    @one_time_action_id = []
    @wait_action_id = []
    @wait_action_count = []
    reinitialize_actions
    send("setup#{@id+1000}")
    ny = real_coord ? y : y-@height/2
    moveto(x, ny)
    make_turn_to_player(true)
    if autobump
      make_bump(-5+rand(2)*10)
    end
  end
  
  def reinitialize_actions
    reinitialize_movement
    @action_attack = false
    @action_quickskill = 0
    @action_spellcard = 0
    @action_guard = false
    @action_hyper = false
  end
  
  def reinitialize_movement
    @action_left = false
    @action_right = false
    @action_jump = false
    @action_lateral_slide = false
    @action_down_slide = false
  end
  
  def battler
    return @enemy
  end
  
  def screen_z
    return 55
  end
  
  def is_lock?
    return $game_temp.stop_enemies
  end
  
  def distance_from_player
    return Math.hypot(self.y - $game_player.y, self.x - $game_player.x)
  end
  
  def x_from_player
    return ($game_player.x - self.x)
  end
  
  def y_from_player
    return ($game_player.y - self.y)
  end
  
  def try_hyper_mode?
    return @action_hyper
  end
  
  def try_left?
    return @action_left
  end
  
  def try_right?
    return @action_right
  end
  
  def try_down?
    return false
  end
  
  def try_up?
    return false
  end
  
  def try_lateral_slide?
    return @action_lateral_slide
  end
  
  def try_down_slide?
    return @action_down_slide
  end
  
  def try_guard?
    return @action_guard
  end
  
  def try_jump?
    return @action_jump
  end
  
  def try_jump_plus?
    return true
  end
  
  def try_drift?
    return false
  end
  
  def try_attack?
    return @action_attack
  end
  
  def try_quickskill?
    return @action_quickskill
  end
  
  def try_magic_cast?
    return @action_spellcard
  end
  
  def continue_pulse?
    return (battler.casting_count < battler.casting_max)
  end
  
  def make_turn_to_player(forced = false)
    if (not cannot_move? and @attack_count == 0) or forced
      @mirror = (x_from_player < 0)
    end
  end
  
  def make_hyper_mode
    super
    @action_hyper = false
  end
  
  def make_jump
    super
    @action_jump = false
  end
  
  def make_attack(skill_id, combo_count)
    make_turn_to_player(true)
    super(skill_id, combo_count)
  end
  
  def make_quickskill(index)
    make_turn_to_player(true)
    super(index)
    @action_quickskill = -1
  end
  
  def make_magic_pulse(index)
    super(index)
    @action_spellcard = 0
  end
  
  def make_cast
    reinitialize_movement
    make_turn_to_player
    super
  end
  
  def make_lateral_slide
    @sliding = @action_left ? 4 : @action_right ? 6 : @mirror ? 4 : 6
    super
    @action_lateral_slide = false
  end
  
  def make_down_slide
    @sliding = 2
    super
    @action_down_slide = false
  end
  
  def make_interruption
    reinitialize_actions
    play_damage_se
    super
  end
  
  def make_death(death_by_enemy)
    super(death_by_enemy)
    reinitialize_actions
    $spriteset.create_burst(self) unless @character_name.empty?
    if battler.boss
      $game_temp.slow_time_count = 180
      $game_map.screen.start_flash(Color.new(255, 255, 255, 160), 100)
      $game_map.screen.start_shake([4, 7, 100, 0, nil])
    end
    if death_by_enemy
      $game_party.hyper_count += battler.hyper_gain
      unless $game_temp.no_gain
        $game_party.gain_exp(battler.exp_gain)
        $game_party.gain_ap(battler.ap_gain)
      end
      if not $game_temp.no_gain and not $game_temp.no_item
        make_item_drop
      end
    end
  end
  
  def make_item_drop
    random = rand(1000)
    total = 0
    for drop in battler.drop_list
      rate = case drop[0]
      when 11..40 ; drop[1]*$game_player.battler.flask_drop_rate/100
      when 41 ; drop[1]*$game_player.battler.hyper_drop_rate/100
      when 1001..2000 ; $game_weapons[drop[0]-1000].owned ? 0 : drop[1]
      when 2001..3000 ; $game_accessories[drop[0]-2000].owned ? 0 : drop[1]
      else ; drop[1]
      end
      total += rate
      if random < total
        $spriteset.create_item(@x, @y, 0, drop[0])
        break
      end
    end
  end
  
  def vanish
    battler.hp = 0
    @death_count = 0
  end
  
  def stop_all_attacks
    stop_attack
    stop_pulse
    reinitialize_actions
    interrupt_all_bullets
  end
  
  def play_death_se
    if battler.boss
      Sound.play_boss_death
    else
      Sound.play_enemy_death
    end
  end
  
  def try_actions
    @ignore_action = false
    possible_actions = []
    d = distance_from_player
    ratio_hp = battler.hp*100/battler.maxhp
    lifespan = battler.lifespan
    life_count = battler.life_count
    allies = $game_temp.enemies.size - 1
    if @action != nil and @action.force_next_actions.size > 0 and 
      @force_tries < @action.force_max_tries
      for action_set in @action.force_next_actions
        action = $game_actions[action_set[0]]
        if can_use_action?(action, d, ratio_hp, lifespan, life_count, allies, true)
          action_set[1].times do 
            possible_actions.push(action)
          end
        end
      end
      if possible_actions.size > 0
        @action = possible_actions[rand(possible_actions.size)]
      else
        @force_tries += 1
        @ignore_action = true
      end
    else
      if @casting > 0
        for action_set in battler.casting_action_set
          action = $game_actions[action_set[0]]
          if can_use_action?(action, d, ratio_hp, lifespan, life_count, allies)
            action_set[1].times do
              possible_actions.push(action)
            end
          end
        end
      elsif battler.hyper_mode
        for action_set in battler.hyper_action_set
          action = $game_actions[action_set[0]]
          if can_use_action?(action, d, ratio_hp, lifespan, life_count, allies)
            action_set[1].times do
              possible_actions.push(action)
            end
          end
        end 
      else
        for action_set in battler.base_action_set
          action = $game_actions[action_set[0]]
          if can_use_action?(action, d, ratio_hp, lifespan, life_count, allies)
            action_set[1].times do
              possible_actions.push(action)
            end
          end
        end
      end
      if possible_actions.size > 0
        @action = possible_actions[rand(possible_actions.size)]
      else
        @action = nil
      end
      @force_tries = 0
    end
  end
  
  def can_use_action?(action, d, ratio_hp, lifespan, life_count, 
    allies, forced_action = false)
    if battler.is_dead?
      return false
    end
    unless forced_action
      if action.one_time_action and @one_time_action_id.include?(action.id)
        return false
      end
      if action.wait_before_reuse > 0 and @wait_action_id.include?(action.id)
        return false
      end
      if action.on_ground and @in_air
        return false
      end
      if d < action.distance_min_from_player or d > action.distance_max_from_player
        return false
      end
      if y_from_player.abs > action.y_max_from_player
        return false
      end
      if ratio_hp < action.hp_min or ratio_hp >= action.hp_max
        return false
      end
      if life_count < action.life_count_min
        return false
      end
      if action.life_count_max > 0 and life_count > action.life_count_max
        return false
      end
      if allies < action.allies_min or allies > action.allies_max
        return false
      end
    end
    if action.type > -1
      if action.type < 6 and @attack_id > 0
        return false
      end
      if action.type == 2 or action.type == 3
        if passable_right?(@x+1+@width/2, @y) and 
          passable_left?(@x-1-@width/2, @y)
          return false
        end
      end
      if action.type == 5 and battler.guard_broken?
        return false
      end
      if action.type == 6 and 
        (@attack_id > 0 or battler.hyper_mode or battler.is_vulnerable?)
        return false
      end
      if @casting > 0 and action.type > 9 and action.type < 13
        return false
      end
      if action.type == 10 and @attack_id > 9
        return false
      end
      if action.type == 11 and (@combo_quickskill_id > 0 or @attack_id > 9)
        return false
      end
      if action.type == 12 and (@attack_id > 0 or battler.is_silent?)
        return false
      end
    end
    return true
  end
  
  def increment_actions
    need_compact = false
    for i in 0...@wait_action_id.size
      @wait_action_count[i] -= 1
      if @wait_action_count[i] == 0
        @wait_action_id[i] = nil
        @wait_action_count[i] = nil
        need_compact = true
      end
    end
    if need_compact
      @wait_action_id.compact!
      @wait_action_count.compact!
    end
  end
  
  def make_action
    reinitialize_actions
    if @action == nil or @ignore_action
      make_turn_to_player
      return
    end
    d = distance_from_player
    case @action.type
    when 0, 1
      dist_x = x_from_player
      dist_y = y_from_player
      dist_y_abs = dist_y.abs
      case @action.args[0]
      when 0
        if dist_x > 0
          @action_right = true
          nx = @x + 1 + @width/2
          if (d < dist_y_abs*2 and dist_y < -80) or 
            not passable_right?(nx, @y)
            if @jump_power > 0 and passable_right?(nx, @y-@jump_power*20)
              @action_jump = true
            end
          elsif (d < dist_y_abs*2 and dist_y > 80 and special_platform_tile?)
            @action_down_slide = true if @jump_power > 0
          end
        else
          @action_left = true
          nx = @x - 1 - @width/2
          if (d < dist_y_abs*2 and dist_y < -80) or 
            not passable_left?(nx, @y)
            if @jump_power > 0 and passable_left?(nx, @y-@jump_power*20)
              @action_jump = true
            end
          elsif (d < dist_y_abs*2 and dist_y > 80 and special_platform_tile?)
            @action_down_slide = true if @jump_power > 0
          end
        end
      when 1
        if dist_x < 0
          @action_right = true
          nx = @x + 1 + @width/2
          if not passable_right?(nx, @y)
            if @jump_power > 0 and passable_right?(nx, @y-@jump_power*20)
              @action_jump = true
            end
          elsif (d < dist_y_abs*2 and dist_y_abs < 80 and special_platform_tile?)
            @action_down_slide = true if @jump_power > 0
          end
        else
          @action_left = true
          nx = @x - 1 - @width/2
          if not passable_left?(nx, @y)
            if @jump_power > 0 and passable_left?(nx, @y-@jump_power*20)
              @action_jump = true
            end
          elsif (d < dist_y_abs*2 and dist_y_abs < 80 and special_platform_tile?)
            @action_down_slide = true if @jump_power > 0
          end
        end
      end
      if @action.type == 1 and not @running
        @action_lateral_slide = true
      end
    when 2, 3
      nx = @x + 1 + @width/2
      if not passable_right?(nx, @y)
        if passable_right?(nx, @y-@jump_power*20)
          @action_jump = true if @jump_power > 0
          @action_right = true
        else
          @action_left = true
        end
        if @action.type == 3 and not @running
          @action_lateral_slide = true
        end
      end
      nx = @x - 1 - @width/2
      if not passable_left?(nx, @y)
        if passable_left?(nx, @y-@jump_power*20)
          @action_jump = true if @jump_power > 0
          @action_left = true
        else
          @action_right = true
        end
        if @action.type == 3 and not @running
          @action_lateral_slide = true
        end
      end
    when 4
      @action_jump = true if @jump_power > 0
    when 5
      make_turn_to_player
      @action_guard = true
    when 6
      @action_hyper = true
      @count = battler.action_frequency - 1
    when 10
      @action_attack = true
    when 11
      @action_quickskill = @action.args[0]+1
    when 12
      @action_spellcard = @action.args[0]+1
      @count = battler.action_frequency - 1
    end
    @one_time_action_id.push(@action.id) if @action.one_time_action
    if @action.wait_before_reuse > 0
      if (i = @wait_action_id.index(@action.id)) != nil
        @wait_action_count[i] = @action.wait_before_reuse
      else
        @wait_action_id.push(@action.id)
        @wait_action_count.push(@action.wait_before_reuse)
      end
    end        
  end
  
  def check_boss_bar_drop    
    hp_bar = battler.maxhp/battler.maxhp_bar
    bar_index = (battler.hp/hp_bar).to_i
    if battler.boss_bar_drop_list[bar_index] != nil
      $spriteset.create_item(@x, @y, 0, battler.boss_bar_drop_list[bar_index])
      battler.boss_bar_drop_list[bar_index] = nil
    end      
  end
  
  def update
    return if $game_temp.stop_time_count > 0 and $game_temp.stop_time_owner != self
    @count += 1
    unless cannot_move?
      if @count >= battler.action_frequency
        @count = 0
        try_actions
        increment_actions
        make_action
      end
      check_move
      check_run
    end
    super
    if battler.boss
      check_boss_bar_drop
    end
  end
end
