class Game_Skill
  
  attr_reader   :id
  attr_reader   :owner
  attr_reader   :bullet_index
  attr_reader   :attack_count
  attr_reader   :action_id
  attr_reader   :cannot_be_interrupted
  attr_reader   :attack_x_move
  attr_reader   :attack_y_move
  attr_reader   :trails
  attr_reader   :vulnerability_duration
  
  SHINIGAMI_ORB_ID = [80, 212, 213, 214, 215]
    
  def initialize(id, owner)
    @id = id
    @repeat_count = 0
    @owner = owner
    @bullet_index = []
    @se_count = []
    @se_name = []
    @attack_count = 0
    @action_id = 0
    @action_id_change_count = []
    @action_id_change_value = []
    @cannot_be_interrupted = false
    @cannot_be_interrupted_change_count = []
    @cannot_be_interrupted_change_value = []
    @attack_x_move = 0
    @attack_x_move_change_count = []
    @attack_x_move_change_value = []
    @attack_y_move = 0
    @attack_y_move_change_count = []
    @attack_y_move_change_value = []
    @mirror_reverse_change_count = []
    @teleport_change_count = []
    @teleport_change_x_value = []
    @teleport_change_y_value = []
    @flash_change_count = []
    @flash_change_color = []
    @flash_change_duration = []
    @screen_flash_change_count = []
    @screen_flash_change_color = []
    @screen_flash_change_duration = []
    @shake_change_count = []
    @shake_change_value = {}
    @trails = false
    @trails_change_count = []
    @trails_change_value = []
    @stop_time_change_count = []
    @stop_time_change_value = []
    @slow_time_change_count = []
    @slow_time_change_value = []
    @vulnerability_duration = 0
    @count = 0
    send("setup#{@id}")
  end
  
  def update
    if (i = @se_count.index(@count)) != nil
      Audio.se_play(@se_name[i], $game_system.sound_volume)
    end
    if (i = @action_id_change_count.index(@count)) != nil
      @action_id = @action_id_change_value[i]
      @owner.force_new_skill_action_id(@action_id)
    end
    if (i = @cannot_be_interrupted_change_count.index(@count)) != nil
      @cannot_be_interrupted = @cannot_be_interrupted_change_value[i]
    end
    if (i = @attack_x_move_change_count.index(@count)) != nil
      @attack_x_move = @attack_x_move_change_value[i]
    end
    if (i = @attack_y_move_change_count.index(@count)) != nil
      @attack_y_move = @attack_y_move_change_value[i]
    end
    if (i = @mirror_reverse_change_count.index(@count)) != nil
      @owner.force_mirror
    end
    if (i = @teleport_change_count.index(@count)) != nil
      @owner.moveto(@teleport_change_x_value[i], @teleport_change_y_value[i])
    end
    if (i = @flash_change_count.index(@count)) != nil
      @owner.skill_flash(@flash_change_color[i], @flash_change_duration[i])
    end
    if (i = @screen_flash_change_count.index(@count)) != nil
      $game_map.screen.start_flash(@screen_flash_change_color[i], 
      @screen_flash_change_duration[i])
    end
    if (i = @shake_change_count.index(@count)) != nil
      $game_map.screen.start_shake(@shake_change_value[i])
    end
    if (i = @trails_change_count.index(@count)) != nil
      @trails = @trails_change_value[i]
    end
    if (i = @stop_time_change_count.index(@count)) != nil
      $game_temp.stop_time_owner = @owner
      $game_temp.stop_time_count = @stop_time_change_value[i]
    end
    if (i = @slow_time_change_count.index(@count)) != nil
      $game_temp.slow_time_count = @slow_time_change_value[i]
    end
    @count += 1
    if @repeat_count > 0 and @count == @attack_count
      send("setup#{@id}")
      @owner.refresh_skill
      @count = 0
    end
  end
  
  def increment_bullet_index
    @bullet_index.push($spriteset.bullet_count)
    $spriteset.bullet_count += 1
  end
  
  def combo_effect
    return @owner.battler.combo_status_effect
  end
  
  def super_combo?
    return (hyper_mode? or @owner.battler.super_combo?)
  end
  
  def hyper_mode?
    return @owner.battler.hyper_mode
  end
  
  def create_spellcard_background(type, count = 0)
    case type
    when 1
      $spriteset.create_spellcard_background("Fire", @owner, 3, 2, count)
    when 2
      $spriteset.create_spellcard_background("Water", @owner, 0, -3, count)
    when 3
      $spriteset.create_spellcard_background("Wind", @owner, 2, 4, count)
    when 4
      $spriteset.create_spellcard_background("Earth", @owner, 0, 3, count)
    when 5
      $spriteset.create_spellcard_background("Ice", @owner, 1, 1, count)
    when 6
      $spriteset.create_spellcard_background("Stars", @owner, -1, -1, count)
    when 7
      $spriteset.create_spellcard_background("Plants", @owner, 1, 1, count)
    when 8
      $spriteset.create_spellcard_background("Evil", @owner, -1, 2, count)
    when 9
      $spriteset.create_spellcard_background("Illusion", @owner, 2, 2, count)
    when 10
      $spriteset.create_spellcard_background("Rainbow", @owner, 5, 5, count)
    when 11
      $spriteset.create_spellcard_background("Tempest", @owner, -1, 3, count)
    when 12
      $spriteset.create_spellcard_background("Magma", @owner, 1, 1, count)
    when 13
      $spriteset.create_spellcard_background("Heal", @owner, -1, -2, count)
    when 14
      $spriteset.create_spellcard_background("Void", @owner, 2, 2, count)
    when 15
      $spriteset.create_spellcard_background("Dragon", @owner, 1, 1, count)
    when 16
      $spriteset.create_spellcard_background("Distortion", @owner, -2, 0, count)
    when 17
      $spriteset.create_spellcard_background("Sunset", @owner, 0, 0, count)
    when 101
      $spriteset.create_spellcard_background("Other01", @owner, 0, 0, count)
    when 102
      $spriteset.create_spellcard_background("Other02", @owner, -1, 0, count)
    when 103
      $spriteset.create_spellcard_background("Other03", @owner, -2, -2, count)
    when 104
      $spriteset.create_spellcard_background("Other04", @owner, -1, 1, count)
    when 105
      $spriteset.create_spellcard_background("Other05", @owner, 1, -1, count)
    end
  end
  
  def in_skill_limit?(x, y, var_x, var_y)
    return (x>$game_temp.skill_min_x-var_x and x<$game_temp.skill_max_x+var_x and 
    y>$game_temp.skill_min_y-var_y and y<$game_temp.skill_max_y+var_y)
  end
end