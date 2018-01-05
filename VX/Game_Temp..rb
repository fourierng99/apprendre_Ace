class Game_Temp
  
  attr_reader   :in_stage
  attr_reader   :chaos_mode
  attr_reader   :cannot_input
  attr_reader   :stop_enemies
  attr_reader   :current_bgm
  attr_reader   :current_bgs
  attr_accessor :game_count
  attr_accessor :stage_count
  attr_accessor :wind_force
  attr_accessor :black_screen
  attr_accessor :clear_fog
  attr_accessor :skill_min_x
  attr_accessor :skill_max_x
  attr_accessor :skill_min_y
  attr_accessor :skill_max_y
  attr_accessor :spellcard_trigger
  attr_accessor :death_trigger
  attr_accessor :switch_trigger
  attr_accessor :no_gain
  attr_accessor :no_item
  attr_accessor :infinite_hyper
  attr_accessor :lock_infinite_hyper
  attr_accessor :enemies
  attr_accessor :ai
  attr_accessor :stop_time_owner
  attr_accessor :stop_time_count
  attr_accessor :slow_time_owner
  attr_accessor :slow_time_count
  attr_accessor :damage_se_count
  attr_accessor :last_item
  attr_accessor :lock_menu
  attr_accessor :call_switch_menu
  attr_accessor :call_main_menu
  attr_accessor :call_save_menu
  attr_accessor :call_stage_menu
  attr_accessor :call_stage_cannot_cancel
  attr_accessor :need_transfer
  attr_accessor :enter_or_leave_stage
  attr_accessor :spriteset_disposed
  attr_accessor :challenge
  attr_accessor :survival_mode
  attr_accessor :survival_infinite_var
  attr_accessor :miscellaneous_vars
  attr_accessor :enemy_death_gathering
  attr_accessor :damage_gathering
  attr_accessor :countdown_gathering
  
  SURVIVAL_ENEMY_ID = [1, 2, 3, 6, 7, 8, 12, 13, 17, 19, 20, 22, 26, 28, 29, 
  31, 32, 33, 36, 40, 41, 42, 43, 47, 49, 53, 54, 57, 58, 59, 60, 61, 67, 
  71, 73, 75, 76, 77, 79, 82, 83, 85, 86]
  SURVIVAL_CHAOS_ENEMY_ID = [126, 127, 128, 131, 132, 133, 134, 137, 138, 
  142, 144, 145, 147, 153, 155, 156, 158, 159, 161, 163, 170, 171, 172, 174, 
  178, 179, 183, 184, 188, 189, 190, 191, 192, 198, 201, 203, 207, 208, 209, 
  211, 217, 218, 220, 221, 242, 243, 244, 245, 246]
  
  def initialize
    @game_count = 0
    @stage_count = 0
    @wind_force = 0.0
    @black_screen = false
    @clear_fog = false
    @skill_min_x = 0
    @skill_max_x = 0
    @skill_min_y = 0
    @skill_max_y = 0
    @spellcard_trigger = false
    @death_trigger = false
    @switch_trigger = false
    @in_stage = false
    @chaos_mode = false
    @no_gain = false
    @no_item = false
    @infinite_hyper = false
    @lock_infinite_hyper = false
    @cannot_input = false
    @stop_enemies = false
    @enemies = []
    @ai = []
    @stop_time_owner = nil
    @stop_time_count = 0
    @slow_time_count = 0
    @damage_se_count = 0
    @last_item = nil
    @lock_menu = false
    @call_switch_menu = nil
    @call_main_menu = nil
    @call_save_menu = nil
    @call_stage_menu = nil
    @call_stage_cannot_cancel = false
    @need_transfer = false
    @enter_or_leave_stage = false
    @spriteset_disposed = false # utilisé dans Common Events
    @challenge = false
    @survival_mode = false
    @survival_infinite_var = 0
    @miscellaneous_vars = [0, 0, 0, 0]
    @enemy_death_gathering = false
    @damage_gathering = false
    @countdown_gathering = false
    @current_bgm = ""
    @current_bgs = ""
  end
  
  def initialize_transfer
    @need_transfer = true
    $game_player.stop_pulse
    $game_player.stop_movement
    $game_player.stop_attack
    for bullet in $spriteset.bullets
      bullet.fading = true
    end
  end
  
  def start_stage(chaos_mode = false)
    for i in 201..219 do $game_switches[i] = false end
    $game_switches[220] = chaos_mode
    @chaos_mode = chaos_mode
    @in_stage = true
    @stage_count = 0
    @spellcard_trigger = false
    @death_trigger = false
    @switch_trigger = false
  end
  
  def end_stage
    for i in 201..220 do $game_switches[i] = false end
    @in_stage = false
  end
  
  def transfer
    @ai.clear
    @enemies.clear
    @need_transfer = false
    @survival_mode = false
    @survival_infinite_var = 0
    @no_gain = false
    @no_item = false
    @infinite_hyper = false unless @lock_infinite_hyper
    reinit_challenge
  end
  
  def reinit_challenge
    @challenge = false
    @miscellaneous_vars = [0, 0, 0, 0]
    @enemy_death_gathering = false
    @damage_gathering = false
    @countdown_gathering = false
  end
  
  def lock_player
    @cannot_input = true
    @stop_time_count = 0
    @slow_time_count = 0
    $game_player.stop_attack
    $game_player.stop_run
  end
  
  def unlock_player
    @cannot_input = false
  end
  
  def lock_enemies
    @stop_enemies = true
    for ai in @ai
      ai.stop_all_attacks
    end
  end
  
  def unlock_enemies
    @stop_enemies = false
  end
  
  def kill_all_enemies
    for enemy in @enemies
      enemy.kill_battler
    end
    $game_player.clear_bullets_index
  end
  
  def mortal_enemies
    for enemy in @enemies
      return true unless enemy.immortal
    end
    return false
  end
  
  def in_battle
    return (@enemies.size > 0)
  end
  
  def can_open_chest?
    return (not in_battle and not $game_player.in_air)
  end
  
  def bgm_spriteset
    if $scene.is_a?(Scene_Map) and $display and not @current_bgm.empty?
      $display.create_bgm_spriteset(@current_bgm)
    end
  end
  
  def play_bgm(name)
    if name != @current_bgm
      @current_bgm = name
      Audio.bgm_stop
      unless name.empty?
        Audio.bgm_play("Audio/BGM/" + name, $game_system.music_volume)
        bgm_spriteset
      end
    end
  end
  
  def bgm_volume_change
    unless @current_bgm.empty?
      Audio.bgm_play("Audio/BGM/" + @current_bgm, $game_system.music_volume)
    end
  end
  
  def bgm_fade(time)
    @current_bgm = ""
    Audio.bgm_fade(time)
  end
  
  def bgm_stop
    @current_bgm = ""
    Audio.bgm_stop
  end    
  
  def play_bgs(name)
    if name != @current_bgs
      @current_bgs = name
      Audio.bgs_stop
      unless name.empty?
        Audio.bgs_play("Audio/BGS/" + name, $game_system.sound_volume)
      end
    end
  end
  
  def bgs_fade(time)
    @current_bgs = ""
    Audio.bgs_fade(time)
  end
  
  def bgs_stop
    @current_bgs = ""
    Audio.bgs_stop
  end
  
  def bgs_pause
    Audio.bgs_stop
  end
  
  def continue_bgs
    unless @current_bgs.empty?
      Audio.bgs_play("Audio/BGS/" + @current_bgs, $game_system.sound_volume)
    end
  end
  
  def soul_condition_fullfilled?(stage_id, soul_index)
    result = true
    stage = Game_Stage_Info.new(stage_id)
    soul = stage.souls[soul_index]
    if soul
      if soul.chaos_mode and not @chaos_mode
        result = false
      end
      case soul.condition_type
      when 1
        result = false
      when 2
        result = false if @stage_count > (soul.time*60)
      when 3
        result = false if @spellcard_trigger
      when 4
        result = false if @death_trigger
      when 5
        result = false if @switch_trigger
      end
    end
    return result
  end
  
  def survival_get_random_enemy_id
    return @chaos_mode ? SURVIVAL_CHAOS_ENEMY_ID[rand(SURVIVAL_CHAOS_ENEMY_ID.size)] : 
    SURVIVAL_ENEMY_ID[rand(SURVIVAL_ENEMY_ID.size)]
  end
end
