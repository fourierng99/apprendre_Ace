class Game_Character
  
  attr_reader   :id
  attr_reader   :x
  attr_reader   :y
  attr_reader   :character_name
  attr_reader   :width
  attr_reader   :height
  attr_reader   :hitbox_aoe
  attr_reader   :hitbox_x_size
  attr_reader   :hitbox_y_size
  attr_reader   :opacity
  attr_reader   :blend_type
  attr_reader   :action_id
  attr_reader   :pattern
  attr_reader   :pattern_count
  attr_reader   :pattern_name
  attr_reader   :pattern_max
  attr_reader   :mirror
  attr_reader   :angle
  attr_reader   :through
  attr_reader   :trails
  attr_reader   :guarding
  attr_reader   :jumping
  attr_reader   :in_air
  attr_reader   :interrupted
  attr_reader   :magic_pulse
  attr_reader   :magic_cast
  attr_reader   :flash_duration
  attr_reader   :appearance_count
  attr_reader   :death_count
  attr_accessor :transparent
  attr_accessor :flash_color
  attr_accessor :need_refresh
  
  def initialize
    @id = 0
    @x = 0
    @y = 0
    @x_move = 0
    @y_move = 0
    @walk_x_move = 0
    @attack_x_move = 0
    @attack_y_move = 0
    @terrain_id = 0
    @character_name = ""
    @width = 32
    @height = 32
    @hitbox_aoe = 8
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @bullets_index = [] # index des bullets déja encaissées
    @bullets_dot = []
    @bullets_dot_count = []
    @opacity = 255
    @blend_type = 0
    @action_id = 1 # apparition
    @pattern = 0
    @pattern_count = 0
    @previous_pattern_name = ""
    @pattern_name = []
    @pattern_speed = []
    @pattern_max = []
    @pattern_loop = []
    @gravity_type = 0 # 0: normal, 1: volant, 2: immobile
    @jump_power = 8
    @jump_power_plus = 0
    @mirror = false
    @new_mirror = nil
    @previous_mirror = false
    @guard_mirror = false
    @angle = 0
    @autospin = []
    @through = false
    @trails = false
    @transparent = false
    @magic_pulse = false
    @magic_cast = false
    @impact_x = 0
    @impact_y = 0
    @flash_color = nil
    @flash_duration = 0
    @need_refresh = true
    @base_walk_move_speed = 3
    @walk_move_speed = @base_walk_move_speed
    @slide_move_speed = 15
    @running = false
    @sliding = 0
    @sliding_count = 0
    @guarding = false
    @casting = 0
    @jumping = false
    @in_air = false
    @force_jump = false
    @jump_acceleration = 0
    @combo_trigger = false
    @attack_id = 0
    @combo_special_attack_id = 0
    @combo_quickskill_id = 0
    @attack_count = 0
    @wait_after_attack_count = 0
    @cannot_be_interrupted = false
    @interrupted = false
    @interrupt_count = 0
    @bump_count = 0
    @bump_power = 0
    @appearance_count = 0
    @death_time = 20
    @death_count = 0
    @skill = nil
    @skill_info = nil
    @is_player = false
  end
  
  def moveto(x, y)
    @x = x
    @y = y
  end
  
  def real_x
    return @x.to_i
  end
  
  def real_y
    return @y.to_i
  end
  
  def screen_x
    return @x.to_i - $game_map.display_x
  end
  
  def screen_y
    return @y.to_i - $game_map.display_y
  end
  
  def screen_z
    return 50
  end
  
  def cannot_move?
    return (is_appearing? or battler.is_dead? or @interrupted or 
    @bump_count > 0 or battler.is_stunned? or is_lock?)
  end
  
  def is_appearing?
    return (@appearance_count > 0)
  end
  
  def after_death?
    return (battler.is_dead? and @death_count == 0)
  end
  
  def skill_flash(color, duration)
    @flash_color = color
    @flash_duration = duration
  end
  
  def switch_flash
    @flash_color = Color.new(255, 255, 255, 255)
    @flash_duration = 40
  end
  
  def heal_flash
    @flash_color = Color.new(0, 255, 64, 192)
    @flash_duration = 20
  end
  
  def mp_flash
    @flash_color = Color.new(64, 64, 255, 192)
    @flash_duration = 20
  end
  
  def cursed_flash
    @flash_color = Color.new(0, 0, 0, 192)
    @flash_duration = 60
  end
  
  def white_flash
    @flash_color = Color.new(255, 255, 255, 224)
    @flash_duration = 30
  end
  
  def hyper_point_flash
    @flash_color = Color.new(255, 255, 64, 224)
    @flash_duration = 20
  end
  
  def new_soul_flash
    @flash_color = Color.new(128, 0, 255, 255)
    @flash_duration = 30
  end
  
  def guard_flash
    @flash_color = Color.new(0, 255, 255, 192)
    @flash_duration = 10
  end
  
  def interruption_flash
    @flash_color = Color.new(255, 0, 0, 224)
    @flash_duration = 20
  end
  
  def vulnerable_flash
    @flash_color = Color.new(160, 160, 255, 128)
    @flash_duration = 40
  end
  
  def poison_flash
    @flash_color = Color.new(192, 0, 255, 128)
    @flash_duration = 30
  end
  
  def regen_flash
    @flash_color = Color.new(0, 255, 64, 128)
    @flash_duration = 30
  end
  
  def try_move
    new_x = (@x + @x_move).to_i
    new_y = (@y + @y_move).to_i
    @terrain_id = terrain_id(new_y+@height/2)
    if @y_move >= 0
      border = new_y + @height/2
      if passable_down?(@x, border)
        @in_air = true
        @y += @y_move
      else
        @in_air = false
        @jumping = false
        @y = border/32*32-@height/2
        @y_move = 0
      end
    end
    if @y_move < 0
      border = new_y - @height/2
      if passable_up?(@x, border)
        @y += @y_move
      else
        @y = (border/32+1)*32+@height/2
        @y_move = 0
      end
    end
    if @x_move > 0
      border = new_x + @width/2
      if passable_right?(border, @y)
        @x += @x_move
      else
        @x = border/32*32-@width/2-1
      end
    elsif @x_move < 0
      border = new_x - @width/2
      if passable_left?(border, @y)
        @x += @x_move
      else
        @x = (border/32+1)*32+@width/2
      end
    end
    if not is_appearing? and not battler.is_dead?
      if battler.is_stunned?
        @action_id = 3
      elsif @y_move > 0 and not sliding? and not @interrupted and @attack_id == 0
        @action_id = 8
      end
    end
    if is_lock?
      if not @in_air and not @interrupted and 
        @attack_id == 0 and @x_move == 0 and not battler.is_dead?
        @action_id = 0
      end
    end
  end
  
  def passable_left?(x, y)
    return true if @through
    off_y = (y - @height/2 + 1).to_i
    max_y = (y + @height/2 - 1).to_i
    return false if x < 0 or not $game_map.kekkai_passable?(x)
    loop do
      unless $game_map.tile_passable?(x/32, off_y/32)
        return false
      end
      break if off_y == max_y
      off_y = Math.min(off_y+32, max_y)
    end
    return true
  end
  
  def passable_right?(x, y)
    return true if @through
    off_y = (y - @height/2 + 1).to_i
    max_y = (y + @height/2 - 1).to_i
    return false if x > $game_map.width*32 or not $game_map.kekkai_passable?(x)
    loop do
      unless $game_map.tile_passable?(x/32, off_y/32)
        return false
      end
      break if off_y == max_y
      off_y = Math.min(off_y+32, max_y)
    end
    return true
  end
  
  def passable_down?(x, y)
    return true if @through
    off_x = (x - @width/2).to_i
    max_x = (x + @width/2).to_i
    return false if y > $game_map.height*32
    loop do
      unless $game_map.tile_passable?(off_x/32, y/32)
        return false
      end
      break if off_x == max_x
      off_x = Math.min(off_x+32, max_x)
    end
    return (@sliding == 2 or @attack_y_move > 0) if special_platform_tile?
    return true
  end
  
  def passable_up?(x, y)
    return true if @through
    off_x = (x - @width/2).to_i
    max_x = (x + @width/2).to_i
    return false if y < 0
    loop do
      unless $game_map.tile_passable?(off_x/32, y/32)
        return false
      end
      break if off_x == max_x
      off_x = Math.min(off_x+32, max_x)
    end
    return true
  end
  
  def terrain_id(y)
    return 0 if (y%32) > 15
    off_x = (@x - @width/2).to_i
    max_x = (@x + @width/2).to_i
    id = 0
    loop do
      new_id = $game_map.terrain_tag(off_x/32, y/32)
      id = new_id if id < new_id
      break if off_x == max_x
      off_x = Math.min(off_x+32, max_x)
    end
    return id
  end
  
  def special_platform_tile?
    return (@terrain_id == 1)
  end
  
  def damage_tile?
    return (@terrain_id == 2)
  end
  
  def check_counts
    if @appearance_count > 0
      @appearance_count -= 1
    end
    if @death_count > 0
      @death_count -= 1
    end
    if @wait_after_attack_count > 0
      @wait_after_attack_count -= 1
    end
    if @interrupted
      @interrupt_count -= 1 if @interrupt_count > 0
      @interrupted = false if @interrupt_count == 0
    end
    if @bump_count > 0
      @bump_count -= 1
      if @bump_count == 0
        @bump_power = 0
      end
    end
    if sliding?
      @sliding_count -= 1 if @sliding_count > 0
      if @sliding_count == 0
        if @sliding != 2 and not cannot_move?
          @running = true
        end
        stop_slide
      end
    end
    if @attack_id > 0 and @attack_count == 0
      end_attack
    elsif @attack_count > 0
      @attack_count -= 1
    end
    need_compact = false
    for i in 0...@bullets_dot.size
      @bullets_dot_count[i] -= 1
      if @bullets_dot_count[i] == 0
        @bullets_dot[i] = nil
        @bullets_dot_count[i] = nil
        need_compact = true
      end
    end
    if need_compact
      @bullets_dot.compact!
      @bullets_dot_count.compact!
    end
  end
  
  def gravity_move
    y_plus = @gravity_type == 0 ? 0.5 : @gravity_type == 1 ? 0.1 : 0
    max_y = @gravity_type == 0 ? 8 : 2
    if @bump_count > 0
      @x_move = @bump_power > 0 ? 1.5*Math.min(@bump_power, @bump_count) : 
      1.5*Math.max(@bump_power, -@bump_count)
      @y_move = -0.8
    elsif @attack_id == 0
      @x_move = @walk_x_move
      if @jumping and try_jump_plus? and @jump_power_plus > -1 and 
        @jump_power_plus < jump_plus_max and @action_id != 8
        @jump_power_plus += 1
      else
        @y_move += y_plus
        if @jump_power_plus > 0
          @force_jump = false
          @jump_power_plus = -1
        end
      end
    else
      @x_move = @attack_x_move
      if @attack_y_move == 0
        @y_move += y_plus/5
      else
        @y_move = @attack_y_move
      end
    end
    @walk_x_move = 0
    if @sliding == 2
      @y_move = Math.middle(-8, @y_move, 15)
    elsif @attack_y_move == 0
      @y_move = Math.middle(-8, @y_move, max_y)
    end
    if $game_map.lateral_wind
      if @gravity_type < 2 and @base_walk_move_speed > 0 and not is_lock?
        @x_move += $game_temp.wind_force
      end
    end
    if ascending?
      @y_move -= @attack_id == 0 ? y_plus*2/3 : y_plus/6
    end
    if $game_map.underwater
      @y_move *= 0.8 if @y_move > 0
      @x_move *= 0.7
    end
  end
  
  def check_move
    @guarding = false    
    if try_hyper_mode?
      if battler.hyper_mode
        stop_hyper_mode
      else 
        make_hyper_mode
      end
    end
    if $game_temp.stop_time_count == 0
      unless battler.is_frozen?
        if try_lateral_slide?
          make_lateral_slide
          return
        end
      end
      if try_down_slide?
        if in_air or special_platform_tile?
          make_down_slide
          return
        end
      end
      if try_jump?
        if @gravity_type == 0 and not @jumping
          make_jump
        elsif @gravity_type == 1
          make_fly
        end
      end
      if try_drift? and @jumping and @action_id == 8 and not $game_map.underwater
        make_drift
      end
    end
    if @attack_count == 0
      e = try_magic_cast?
      if e > 0
        @skill_info = Game_Skill_Info.new(battler.spellcard_id[e-1])
        make_magic_pulse(e)
      end
    end
    if @casting > 0
      make_increase_casting_count
      if battler.is_silent?
        stop_pulse
      elsif not continue_pulse?
        if battler.casting_count == battler.casting_max
          make_cast
          make_magic_circle
        end
        stop_pulse
      end
    elsif @wait_after_attack_count == 0
      quickskill = try_quickskill?
      if quickskill > 0
        if @attack_id == 0
          make_quickskill(quickskill)
          return
        elsif @attack_id < 10
          @combo_trigger = true
          @combo_quickskill_id = quickskill
        end
        save_attack_direction
      elsif try_attack?
        if @attack_id == 0
          make_attack(battler.combo_attack_id[0], @attack_id+1)
          return
        elsif @combo_quickskill_id == 0
          @combo_trigger = true
          if try_up?
            @combo_special_attack_id = 1
          elsif try_down?
            @combo_special_attack_id = 2
          end
        end
        save_attack_direction
      end
      if @attack_count == 0 and @combo_trigger == true
        if @new_mirror
          @mirror = @new_mirror
          @new_mirror = nil
        elsif try_left?
          @mirror = true
        elsif try_right?
          @mirror = false
        end
        if @combo_quickskill_id > 0
          make_quickskill(@combo_quickskill_id)
        elsif @attack_id < battler.max_attacks
          if @combo_special_attack_id > 0 and @attack_id > 1
            index = battler.max_attacks-1+@combo_special_attack_id
            make_attack(battler.combo_attack_id[index], battler.max_attacks)
          else
            make_attack(battler.combo_attack_id[@attack_id], @attack_id+1)
          end
        end
        @combo_trigger = false
      end
    end
    
    return if @attack_count > 0    
    if sliding?
      continue_slide
      return
    end
    if try_guard? and not @in_air and not try_down_slide? and 
      not battler.guard_broken?
      if try_left?
        @mirror = true
      elsif try_right?
        @mirror = false
      end
      make_guard
      return
    end
    if try_right?
      make_right_move
    elsif try_left?
      make_left_move
    else
      make_stand
    end
  end
  
  def save_attack_direction
    if try_left?
      @new_mirror = true
    elsif try_right?
      @new_mirror = false
    else
      @new_mirror = nil
    end    
  end  
   
  def ascending?
    return ($game_map.updraft and @in_air)
  end
  
  def sliding?
    return @sliding > 0
  end
  
  def check_run
    if @previous_mirror == !@mirror
      stop_run
    end
    @previous_mirror = @mirror
  end
  
  def make_increase_casting_count
    val = battler.spellcard_casting_value[@casting-1]
    val *= 2 if battler.hyper_mode
    battler.casting_count += val
  end
  
  def make_hyper_mode
    battler.activate_hyper_mode
    $game_map.screen.start_shake([4, 7, 30, 0, nil])
    $spriteset.create_hyper_activation(self)
    $spriteset.create_lightning(self)
  end
  
  def stop_hyper_mode
    battler.deactivate_hyper_mode
  end
  
  def jump_plus_max
    return $game_map.underwater ? 38 : 13
  end
  
  def make_jump
    Sound.play_jump
    stop_attack
    if @in_air
      $spriteset.create_air_jump(self)
    end
    @action_id = 7
    @jump_power_plus = 0
    @jumping = true
    @in_air = true
    @y_move = -@jump_power
    if $game_map.underwater
      @y_move /= 2
    end
  end
  
  def make_fly
    stop_attack
    @action_id = 7
    @in_air = true
    @y_move = -@jump_power
    if $game_map.underwater
      @y_move /= 2
    end
  end
  
  def make_drift
    @y_move = ascending? ? 1 : 2
  end
  
  def make_guard
    @action_id = 9
    @guarding = true
    stop_run
  end
  
  def make_attack(skill_id, combo_count)
    interrupt_unique_bullets(skill_id)
    stop_run
    stop_slide
    @y_move = 0
    @skill = Game_Skill.new(skill_id, self)
    @attack_id = combo_count
    @pattern_count = 0
    refresh_skill
  end
  
  def make_quickskill(index)
    skill_id = battler.quickskill_id[index-1]
    interrupt_unique_bullets(skill_id)
    stop_run
    stop_slide
    @y_move = 0
    $spriteset.create_quickskill(self) unless @character_name.empty? 
    @skill = Game_Skill.new(skill_id, self)
    @attack_id = index+100
    @combo_quickskill_id = 0
    @pattern_count = 0
    refresh_skill
  end
  
  def make_magic_pulse(index)
    @magic_pulse = true
    elem_id = @skill_info.main_element
    $spriteset.create_pulse(self, elem_id) unless @character_name.empty? 
    @casting = index
  end
  
  def make_cast
    skill_id = battler.spellcard_id[@casting-1]
    interrupt_unique_bullets(skill_id)
    stop_run
    stop_slide
    @y_move = 0
    @skill = Game_Skill.new(skill_id, self)
    Audio.se_play("Audio/SE/spell_se", $game_system.sound_volume)
    @attack_id = 10
    @pattern_count = 0
    refresh_skill
    unless @skill_info.name.empty?
      $display.create_spellcard_name(@skill_info)
    end
  end
  
  def make_magic_circle
    @magic_cast = true
    elem_id = @skill_info.main_element
    $spriteset.create_circle(self, elem_id) unless @character_name.empty? 
  end
  
  def make_lateral_slide
    Sound.play_slide
    stop_attack
    @action_id = 6
    @sliding_count = 12
    @mirror = (@sliding == 4)
    @trails = true
    continue_slide
  end
  
  def make_down_slide
    Sound.play_slide
    stop_attack
    @action_id = 8
    @sliding_count = 6
    @trails = true
    continue_slide
  end
  
  def continue_slide
    case @sliding
    when 4
      @walk_x_move = -@slide_move_speed
    when 6
      @walk_x_move = @slide_move_speed
    when 2
      @y_move = 15
    end
  end
  
  def make_right_move
    unless @in_air
      @action_id = @running ? 6 : 5
    end
    @walk_x_move = @running ? @walk_move_speed*2 : @walk_move_speed
    @mirror = false
  end
  
  def make_left_move
    unless @in_air
      @action_id = @running ? 6 : 5
    end
    @walk_x_move = @running ? -@walk_move_speed*2 : -@walk_move_speed
    @mirror = true
  end
  
  def make_stand
    stop_run
    if not @in_air or @gravity_type == 2
      @action_id = 0
    end
  end
  
  def make_interruption
    interruption_flash
    @interrupted = true
    @interrupt_count = 20
    stop_run
    stop_slide
    stop_pulse
    make_vulnerability
    interrupt_skill_bullets
    finish_attack
    @action_id = 3
    @pattern_count = 0
  end
  
  def make_bump(power)
    stop_run
    stop_slide
    time = 12+power.abs
    @bump_count = time
    @bump_power = power
    p = Math.min(power.abs, 8)
    $game_map.screen.start_shake([p/2, p, time, 0, nil])
  end
  
  def make_stun    
    stop_run
    stop_slide
    stop_pulse
    make_vulnerability
    interrupt_skill_bullets
    finish_attack
  end
  
  def make_vulnerability
    if @skill
      if @skill.vulnerability_duration > 0 and not battler.immune_to_interruption?
        battler.add_state(6, @skill.vulnerability_duration)
      end
    end
  end
  
  def make_death(death_by_enemy)
    play_death_se unless battler.immortal
    @death_count = @death_time
    @interrupted = false
    @interrupt_count = 0
    stop_run
    stop_slide
    stop_pulse
    interrupt_all_bullets
    finish_attack
    @action_id = 2
  end
  
  def force_fake_cast(time)
    Audio.se_play("Audio/SE/spell_se", $game_system.sound_volume)
    @attack_id = 10
    @attack_count = time
    @action_id = 4
    @y_move = 0
    @running = false
  end
  
  def force_new_skill_action_id(id)
    @action_id = id
  end
  
  def force_attack
    make_attack(battler.combo_attack_id[0], @attack_id+1)
  end
  
  def force_skill(i)
    index = i+1
    stop_attack
    make_quickskill(index)
  end
  
  def force_spellcard(i)
    index = i+1
    stop_attack
    @skill_info = Game_Skill_Info.new(battler.spellcard_id[i])
    make_magic_pulse(index)
    battler.casting_count = battler.casting_max
  end
  
  def force_direction(direction)
    @mirror = (direction == 4)
  end
  
  def force_mirror
    @mirror = !@mirror
  end
  
  def force_run
    @running = true
  end
  
  def force_jump
    make_jump
    @force_jump = true
  end
  
  def end_attack
    make_vulnerability
    finish_attack
  end
  
  def finish_attack
    @attack_id = 0
    @combo_special_attack_id = 0
    @combo_quickskill_id = 0
    @attack_count = 0
    @wait_after_attack_count = 8
    @combo_trigger = false
    @trails = false
    @magic_cast = false
    @y_move = 0
    @attack_x_move = 0
    @attack_y_move = 0
    @skill = nil
    @cannot_be_interrupted = false
  end
  
  def stop_pulse
    @magic_pulse = false
    @casting = 0
    battler.casting_count = 0
  end
  
  def stop_movement
    @jumping = false
    @jump_power_plus = 0
    stop_slide
    @bump_count = 0
    @x_move = 0
    @y_move = 0
  end
  
  def stop_slide
    if sliding?
      @sliding = 0
      @sliding_count = 0
      @trails = false
    end
  end
  
  def stop_attack
    if @attack_id > 0
      make_vulnerability
      interrupt_skill_bullets
      finish_attack
    end
  end
  
  def stop_run
    @running = false
  end
  
  def interrupt_unique_bullets(skill_id)
    for bullet in $spriteset.bullets
      if bullet.unique and bullet.skill_id == skill_id and 
        bullet.owner == self
        bullet.fading = true
      end
    end
  end
  
  def interrupt_skill_bullets
    return if @skill == nil
    for bullet in $spriteset.bullets
      if @skill.bullet_index.include?(bullet.index) and not bullet.is_free?
        bullet.fading = true
      end
    end
    $game_map.screen.clear_shake if $game_map.screen.shake_owner == self
  end
  
  def interrupt_all_bullets
    for bullet in $spriteset.bullets
      if bullet.owner == self
        bullet.fading = true
      end
    end
    $game_map.screen.clear_shake if $game_map.screen.shake_owner == self
  end
  
  def check_bullet_collision
    for bullet in $spriteset.bullets
      if not bullet.disposed? and bullet.active
        if bullet.beneficial
          next if self.class != bullet.owner.class
          next if bullet.user_only and self != bullet.owner
        else
          next if self.class == bullet.owner.class
        end
        next if @bullets_index.include?(bullet.index)
        next if @bullets_dot.include?(bullet.index)
        if hit?(bullet)
          if bullet.dot > 0
            @bullets_dot.push(bullet.index)
            @bullets_dot_count.push(bullet.dot)
          elsif bullet.piercing
            @bullets_index.push(bullet.index)
          else
            bullet.dispose
          end
          make_damage(bullet)
          if battler.is_dead?
            make_death(true)
            return
          end
        end
      end
    end
  end
  
  def hit?(bullet)
    xA = bxA = real_x
    yA = byA = real_y
    xB = bxB = bullet.real_x.to_i
    yB = byB = bullet.real_y.to_i
    if @hitbox_x_size > 0 and bullet.hitbox_x_size > 0
      off_h = @hitbox_x_size/2
      min_xA = bxA - off_h
      max_xA = bxA + off_h
      if bullet.unilateral_hitbox
        if bullet.opposite_side
          min_xB = bxB - bullet.hitbox_x_size
          max_xB = bxB
        else
          min_xB = bxB
          max_xB = bxB + bullet.hitbox_x_size
        end
      else
        off_h = bullet.hitbox_x_size/2
        min_xB = bxB - off_h
        max_xB = bxB + off_h
      end
      if @hitbox_x_size > bullet.hitbox_x_size
        if min_xB >= min_xA and min_xB <= max_xA
          xA = min_xB
          xB = min_xB
        elsif max_xB >= min_xA and max_xB <= max_xA
          xA = max_xB
          xB = max_xB
        elsif max_xB < min_xA
          xA = min_xA
          xB = max_xB
        else #min_xB > max_xA
          xA = max_xA
          xB = min_xB
        end
      else
        if min_xA >= min_xB and min_xA <= max_xB
          xA = min_xA
          xB = min_xA
        elsif max_xA >= min_xB and max_xA <= max_xB
          xA = max_xA
          xB = max_xA
        elsif max_xA < min_xB
          xA = max_xA
          xB = min_xB
        else #min_xA > max_xB
          xA = min_xA
          xB = max_xB
        end
      end
    elsif @hitbox_y_size > 0 and bullet.hitbox_y_size > 0
      off_h = @hitbox_y_size/2
      min_yA = byA - off_h
      max_yA = byA + off_h
      if bullet.unilateral_hitbox
        if bullet.opposite_side
          min_yB = byB - bullet.hitbox_y_size
          max_yB = byB
        else
          min_yB = byB
          max_yB = byB + bullet.hitbox_y_size
        end
      else
        off_h = bullet.hitbox_y_size/2
        min_yB = byB - off_h
        max_yB = byB + off_h     
      end
      if @hitbox_y_size > bullet.hitbox_y_size
        if min_yB >= min_yA and min_yB <= max_yA
          yA = min_yB
          yB = min_yB
        elsif max_yB >= min_yA and max_yB <= max_yA
          yA = max_yB
          yB = max_yB
        elsif max_yB < min_yA
          yA = min_yA
          yB = max_yB
        else #min_yB > max_yA
          yA = max_yA
          yB = min_yB
        end
      else
        if min_yA >= min_yB and min_yA <= max_yB
          yA = min_yA
          yB = min_yA
        elsif max_yA >= min_yB and max_yA <= max_yB
          yA = max_yA
          yB = max_yA
        elsif max_yA < min_yB
          yA = max_yA
          yB = min_yB
        else #min_yA > max_yB
          yA = min_yA
          yB = max_yB
        end
      end
    else
      if @hitbox_x_size > 0
        off_h = @hitbox_x_size/2
        xA = Math.middle(bxA-off_h, bxB, bxA+off_h)
      elsif bullet.hitbox_x_size > 0
        if bullet.unilateral_hitbox
          if bullet.opposite_side
            min_xB = bxB - bullet.hitbox_x_size
            max_xB = bxB
          else
            min_xB = bxB
            max_xB = bxB + bullet.hitbox_x_size
          end
        else
          off_h = bullet.hitbox_x_size/2
          min_xB = bxB - off_h
          max_xB = bxB + off_h
        end
        xB = Math.middle(min_xB, bxA, max_xB)
      end
      if @hitbox_y_size > 0
        off_h = @hitbox_y_size/2
        yA = Math.middle(byA-off_h, byB, byA+off_h)
      elsif bullet.hitbox_y_size > 0
        if bullet.unilateral_hitbox
          if bullet.opposite_side
            min_yB = byB - bullet.hitbox_y_size
            max_yB = byB
          else
            min_yB = byB
            max_yB = byB + bullet.hitbox_y_size
          end
        else
          off_h = bullet.hitbox_y_size/2
          min_yB = byB - off_h
          max_yB = byB + off_h     
        end
        yB = Math.middle(min_yB, byA, max_yB)
      end
    end
    d = Math.hypot(xB - xA, yB - yA)
    result = (d <= @hitbox_aoe + bullet.hitbox_aoe)
    if result
      @impact_x = xA-bxA
      if bxB < bxA
        @impact_x -= @width/4
      elsif bxB > bxA
        @impact_x += @width/4    
      end
      @impact_y = yA-byA
      @guard_mirror = (bxB < bxA)
    end
    return result
  end
  
  def make_damage(bullet)
    total_guard = false
    owner = bullet.owner.battler
    atk = owner.atk
    dex = owner.dex
    pwr = bullet.power
    maxhp = battler.maxhp
    maxhp_bar = maxhp/battler.maxhp_bar
    crit_hit = owner.critical_hit_power
    crit_prob = dex
    crit = (rand(1000) < crit_prob)
    el = bullet.element
    elem_pwr = owner.elem_power(el)
    elem_effect = 0
    lvl = owner.is_a?(Game_Actor) ? 
    owner.skill_level(bullet.skill_id) : 0
    dmg = 0
    if bullet.beneficial
      o_maxhp = owner.maxhp
      o_maxhp_bar = o_maxhp/owner.maxhp_bar
      dmg = pwr * o_maxhp_bar/100.0
      dmg = dmg*(1+elem_pwr/100.0) if el > 0
      dmg = dmg*(1+lvl/20.0) if lvl > 0
      dmg = dmg*crit_hit/100 if crit
      dmg = dmg.to_i
    else
      dfs = battler.def
      dfs = 0 if rand(100) < owner.ignore_enemy_defense_prob
      ratio = 1.0-((dfs/atk.to_f)**1.5)*0.3
      ratio = Math.middle(0, ratio, 1)
      dmg = atk * ratio * pwr/100.0
      if el > 0
        dmg = dmg*(1+elem_pwr/100.0)
        elem_res = battler.elem_resist(el)
        dmg = dmg*(1-elem_res/100.0)
        if elem_res > 0
          elem_effect = -1
        elsif elem_res < 0
          elem_effect = 1
        end
      end
      dmg = dmg*(1+lvl/20.0) if lvl > 0
      dmg = dmg*1.3 if owner.hyper_mode
      dmg = dmg*crit_hit/100 if crit
      dmg = dmg*1.25 if battler.is_vulnerable?
      dmg = dmg*0.5 if @sliding > 2
      dmg = dmg*0.5 if battler.hyper_mode
      if @is_player
        dmg *= $game_party.damage_coef
        ignore_prob = battler.ignore_damage_prob
        if rand(100) < ignore_prob
          dmg = 0
        end
      end
      dmg = 0 if battler.is_invincible?
      dmg = dmg.to_i
      if @guarding
        max = battler.guard_count
        total = (dmg*7500/maxhp_bar).to_i
        battler.reduce_guard(total)
        total_guard = (total <= max)
        unless total_guard
          @guarding = false
          coef_red = 1.0-(max/total.to_f)
          dmg = (dmg*coef_red).to_i
          Sound.play_broken_guard
          battler.add_state(5, 300)
        end
      end
      if battler.is_protected?
        i = battler.states.index(9)
        max = battler.states_duration[i]
        total = (dmg*3000/maxhp_bar).to_i
        red_dur = Math.min(total, max)
        battler.reduce_duration(i, red_dur)
        coef_red = Math.middle(0, 1.0-(max/total.to_f), 1)
        dmg = (dmg*coef_red).to_i
      end
    end
    heal = (dmg < 0)
    if bullet.bump_force > 0
      if not battler.immune_to_bump? and @gravity_type < 2
        bump_p = bullet.bump_force
        bump_p = -bump_p if @impact_x > 0
        make_bump(bump_p)
      end
    end
    if total_guard
      play_guard_se
      @mirror = @guard_mirror
      guard_flash
    else
      if dmg > 0
        damage_gathering(dmg) if $game_temp.damage_gathering
        $spriteset.create_impact(self, @impact_x, @impact_y)
        interrupt_prob = ((dmg*200/maxhp_bar)**1.3 + 2).to_i
        interrupt_result = battler.is_vulnerable? ? 
        true : (rand(100) < interrupt_prob)
        if interrupt_result and not @cannot_be_interrupted and 
          not battler.immune_to_interruption? and 
          not battler.hyper_mode and not is_appearing?
          make_interruption
        else
          play_damage_se
        end
      elsif dmg < 0
        heal_flash
      end
      state_array = []
      duration_array = []
      for i in 0...bullet.status_effects.size
        state_id = bullet.status_effects[i]
        next if state_id == 1 and @cannot_be_interrupted
        prob = bullet.status_prob[i]
        resist = battler.states_resistance(state_id)
        state_duration = bullet.status_duration[i]
        state_duration = (state_duration*(1+elem_pwr/100.0)).to_i if el > 0
        state_duration = (state_duration*(1+lvl/20.0)).to_i if lvl > 0
        state_duration = (state_duration * (1-(resist/100.0))).to_i
        if rand(100) < prob
          state_array.push(state_id)
          duration_array.push(state_duration)
        end
      end
      battler.attack_effect(dmg, state_array, duration_array)
      if (@is_player and $game_system.enable_player_damage) or 
        (not @is_player and $game_system.enable_enemy_damage)
        take_damage(dmg, heal, crit, elem_effect) if pwr != 0
      end
    end
  end
  
  def play_guard_se
    if $game_temp.damage_se_count == 0
      $game_temp.damage_se_count = 15
      Sound.play_guard
    end
  end
  
  def play_damage_se
    if $game_temp.damage_se_count == 0
      $game_temp.damage_se_count = 15
      Sound.play_damage
    end
  end
  
  def play_death_se
    Sound.play_player_death
  end
  
  def take_damage(dmg, heal, crit, elem_effect)
    return if @transparent
    digits = []
    dig_dmg = dmg.abs
    loop do
      digits.push(dig_dmg%10)
      dig_dmg /= 10
      break if dig_dmg == 0
    end
    sz = digits.size
    by = @y.to_i - @height/4 - 24 + rand(49)
    off_x = -24 + rand(49)
    args = [0, by, heal, @is_player, 0, crit, elem_effect]
    for i in 0...sz
      args[0] = @x.to_i + (sz-1)*9 - i*18 + off_x
      args[4] = digits[i]
      $display.create_damage(args)
    end
  end
  
  def state_effects
    if battler.is_stunned?
      make_stun
    end
    if $game_temp.game_count%60==0 and battler.is_poisoned?
      dmg = (battler.maxhp/battler.maxhp_bar)/15
      dmg /= 2 if @is_player
      dmg = 0 if battler.is_invincible?
      hp = battler.hp
      dmg = hp - 1 if dmg >= hp
      damage_gathering(dmg) if $game_temp.damage_gathering
      battler.attack_effect(dmg, [], [])
      if (@is_player and $game_system.enable_player_damage) or 
        (not @is_player and $game_system.enable_enemy_damage)
        take_damage(dmg, false, false, 0)
      end
      poison_flash
    end
    if $game_temp.game_count%60==30 and battler.is_recovered?
      dmg = -((battler.maxhp/battler.maxhp_bar)/20)
      dmg /= 2 if @is_player
      battler.attack_effect(dmg, [], [])
      if (@is_player and $game_system.enable_player_damage) or 
        (not @is_player and $game_system.enable_enemy_damage)
        take_damage(dmg, true, false, 0)
      end
      regen_flash
    end
    if $game_temp.game_count%30==0 and battler.is_vulnerable?
      vulnerable_flash
    end
    if battler.is_frozen?
      @walk_move_speed = @base_walk_move_speed/2
    elsif battler.hyper_mode
      @walk_move_speed = @base_walk_move_speed*1.5
    else
      @walk_move_speed = @base_walk_move_speed
    end
  end
  
  def terrain_effects
    if damage_tile? and $game_temp.game_count%5==0
      return if is_lock?
      $spriteset.create_flame(self, -@width/2+rand(@width), @height/2-rand(8))
      unless battler.is_invincible?
        play_damage_se
        dmg = 20
        damage_gathering(dmg) if $game_temp.damage_gathering
        battler.attack_effect(dmg, [], [])
        if (@is_player and $game_system.enable_player_damage) or 
          (not @is_player and $game_system.enable_enemy_damage)
          take_damage(dmg, false, false, 0)
        end
        make_death(true) if battler.is_dead?
      end
    end
  end
  
  def damage_gathering(dmg)
    if @is_player
      $game_temp.miscellaneous_vars[1] -= dmg
      $game_temp.miscellaneous_vars[1] = 0 if $game_temp.miscellaneous_vars[1] < 0
    else
      $game_temp.miscellaneous_vars[2] -= dmg
      $game_temp.miscellaneous_vars[2] = 0 if $game_temp.miscellaneous_vars[2] < 0
    end
  end
  
  def check_end_of_life
    if battler.end_of_life and battler.hp > 0
      battler.hp = 0
      make_death(false)
    end
  end
  
  def check_pattern
    if @pattern_name[@action_id] != @previous_pattern_name
      @previous_pattern_name = @pattern_name[@action_id]
      @need_refresh = true
      @pattern_count = 0
    end
    ps = @pattern_speed[@action_id]
    pmax = @pattern_max[@action_id]
    pl = @pattern_loop[@action_id]
    if @pattern_count >= ps*pmax
      @pattern_count = (ps*(pmax-pl)).to_i
    end
    @pattern = ((@pattern_count/ps)%pmax).to_i
    @pattern_count += 1
    @angle += @autospin[@action_id] if @autospin[@action_id]
  end
  
  def update_skill
    if @skill
      @skill.update
      @cannot_be_interrupted = @skill.cannot_be_interrupted
      @attack_x_move = @skill.attack_x_move
      @attack_y_move = @skill.attack_y_move
      @trails = @skill.trails
    end
  end
  
  def refresh_skill
    if @skill
      @attack_count = @skill.attack_count
      @action_id = @skill.action_id
      @cannot_be_interrupted = @skill.cannot_be_interrupted
      @attack_x_move = @skill.attack_x_move
      @attack_y_move = @skill.attack_y_move
      @trails = @skill.trails
    end
  end
  
  def update
    update_skill
    gravity_move
    try_move
    check_counts
    if not battler.is_dead? and not battler.immortal
      check_bullet_collision if $game_temp.stop_time_count == 0
      state_effects
      terrain_effects
    end
    check_end_of_life
    check_pattern
    battler.update
  end
end
