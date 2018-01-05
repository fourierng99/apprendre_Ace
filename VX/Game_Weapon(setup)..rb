class Game_Weapon
  
  def setup(id)
    case(id)
    when 1
      @type = 1
      @base_ap = 35
      @all_quickskill_id = [0, 1]
      @quickskill_level_required = [1, 3]
      @atk_plus = val(5)
    when 2
      @type = 1
      @base_ap = 75
      @all_quickskill_id = [0, 2, 1]
      @quickskill_level_required = [0, 2, 4]
      @atk_plus = val(8)
      @sp_plus = val(20)
    when 3
      @type = 1
      @base_ap = 75
      @all_quickskill_id = [2, 1, 3]
      @quickskill_level_required = [0, 1, 3]
      @atk_plus = val(8)
      @dex_plus = val(25)
      @elem_resist_plus[2] = val(15)
    when 4
      @type = 1
      @base_ap = 140
      @all_quickskill_id = [0, 1, 2, 3]
      @quickskill_level_required = [0, 1, 3, 5]
      @atk_plus = val(12)
      @def_plus = val(3)
      @guard_max_plus = val(15)
    when 5
      @type = 1
      @base_ap = 150
      @all_quickskill_id = [4, 2, 6]
      @quickskill_level_required = [0, 2, 4]
      @atk_plus = val(11)
      @regen_sp_plus = val(15)
      @super_combo = true
    when 6
      @type = 1
      @base_ap = 180
      @all_quickskill_id = [1, 3, 4, 2]
      @quickskill_level_required = [0, 0, 2, 4]
      @atk_plus = val(15)
      @hyper_time_plus = val(15)
      @hp_plus = val(50)
      @states_resistance_plus[1] = val(50)
    when 7
      @type = 1
      @base_ap = 220
      @all_quickskill_id = [2, 0, 6]
      @quickskill_level_required = [0, 1, 3]
      @atk_plus = val(18)
      @cast_speed_plus = val(25)
      @mp_plus = val(30)
      @regen_mp_plus = val(20)
    when 8
      @type = 1
      @base_ap = 200
      @all_quickskill_id = [5, 6, 3, 4]
      @quickskill_level_required = [0, 1, 2, 4]
      @atk_plus = val(18)
      @resurrection_speed_plus = val(25)
      @exp_plus = val(10)
    when 9
      @type = 1
      @base_ap = 260
      @all_quickskill_id = [0, 2, 3, 4]
      @quickskill_level_required = [0, 0, 2, 4]
      @atk_plus = val(28)
      @hp_plus = val(-60)
      @regen_hp_plus = val(-15)
      @ignore_enemy_defense_prob_plus = val(50)
    when 10
      @type = 1
      @base_ap = 350
      @all_quickskill_id = [0, 3, 1, 5]
      @quickskill_level_required = [0, 0, 1, 3]
      @atk_plus = val(24)
      @dex_plus = val(25)
      @critical_hit_power_plus = val(10)
      @states_resistance_plus[0] = val(50)
      @states_resistance_plus[2] = val(50)
    when 11
      @type = 1
      @base_ap = 450
      @all_quickskill_id = [0, 1, 2, 3, 4, 5, 6]
      @quickskill_level_required = [0, 0, 1, 2, 3, 4, 5]
      @atk_plus = val(30)
      @def_plus = val(5)
      @resurrection_speed_plus = val(25)
      @ignore_damage_prob_plus = val(10)
      @super_combo = true
    when 12
      @type = 1
      @base_ap = 450
      @all_quickskill_id = [0, 1, 2, 3, 4, 5, 6]
      @quickskill_level_required = [0, 0, 1, 2, 3, 4, 5]
      @atk_plus = val(32)
      @dex_plus = val(50)
      @hyper_time_plus = val(20)
      @regen_sp_plus = val(15)
      @combo_status_effect = 3
    when 21
      @type = 2
      @base_ap = 40
      @all_quickskill_id = [1, 0]
      @quickskill_level_required = [0, 2]
      @atk_plus = val(6)
    when 22
      @type = 2
      @base_ap = 75
      @all_quickskill_id = [0, 2, 1]
      @quickskill_level_required = [0, 2, 4]
      @atk_plus = val(8)
      @mp_plus = val(20)
    when 23
      @type = 2
      @base_ap = 90
      @all_quickskill_id = [2, 4, 1]
      @quickskill_level_required = [0, 1, 3]
      @atk_plus = val(10)
      @elem_power_plus[2] = val(15)
    when 24
      @type = 2
      @base_ap = 140
      @all_quickskill_id = [0, 1, 2, 3]
      @quickskill_level_required = [0, 1, 3, 5]
      @atk_plus = val(12)
      @critical_hit_power_plus = val(15)
      @states_resistance_plus[0] = val(30)
    when 25
      @type = 2
      @base_ap = 170
      @all_quickskill_id = [0, 4, 3]
      @quickskill_level_required = [0, 1, 3]
      @atk_plus = val(10)
      @auto_regen = true
    when 26
      @type = 2
      @base_ap = 180
      @all_quickskill_id = [5, 2, 1, 0]
      @quickskill_level_required = [0, 0, 2, 4]
      @atk_plus = val(15)
      @elem_power_plus[1] = val(15)
      @elem_power_plus[2] = val(15)
      @elem_power_plus[3] = val(15)
      @elem_power_plus[4] = val(15)
    when 27
      @type = 2
      @base_ap = 220
      @all_quickskill_id = [4, 5, 1]
      @quickskill_level_required = [0, 1, 3]
      @atk_plus = val(18)
      @guard_max_plus = val(15)
      @hp_plus = val(40)
      @combo_status_effect = 1
    when 28
      @type = 2
      @base_ap = 240
      @all_quickskill_id = [6, 0, 3, 2]
      @quickskill_level_required = [0, 1, 2, 4]
      @atk_plus = val(22)
      @dex_plus = val(30)
      @hp_plus = val(-50)
      @super_combo = true
    when 29
      @type = 2
      @base_ap = 260
      @all_quickskill_id = [0, 2, 5, 3]
      @quickskill_level_required = [0, 0, 2, 4]
      @atk_plus = val(28)
      @sp_plus = val(-40)
      @regen_sp_plus = val(-15)
      @hyper_time_plus = val(25)
    when 30
      @type = 2
      @base_ap = 350
      @all_quickskill_id = [0, 5, 1, 6]
      @quickskill_level_required = [0, 0, 1, 3]
      @atk_plus = val(24)
      @resurrection_speed_plus = val(15)
      @ignore_damage_prob_plus = val(5)
      @states_resistance_plus[1] = val(50)
      @survivor = true
    when 31
      @type = 2
      @base_ap = 450
      @all_quickskill_id = [0, 1, 2, 3, 4, 5, 6]
      @quickskill_level_required = [0, 0, 1, 2, 3, 4, 5]
      @atk_plus = val(30)
      @def_plus = val(5)
      @guard_max_plus = val(15)
      @hp_plus = val(60)
      @combo_status_effect = 1
    when 32
      @type = 2
      @base_ap = 450
      @all_quickskill_id = [0, 1, 2, 3, 4, 5, 6]
      @quickskill_level_required = [0, 0, 1, 2, 3, 4, 5]
      @atk_plus = val(32)
      @dex_plus = val(50)
      @regen_mp_plus = val(25)
      @ignore_enemy_defense_prob_plus = val(25)
      @combo_status_effect = 4
    when 41
      @type = 3
      @base_ap = 45
      @all_quickskill_id = [0, 1]
      @quickskill_level_required = [0, 2]
      @atk_plus = val(7)
    when 42
      @type = 3
      @base_ap = 75
      @all_quickskill_id = [0, 2, 1]
      @quickskill_level_required = [0, 2, 4]
      @atk_plus = val(8)
      @hp_plus = val(30)
    when 43
      @type = 3
      @base_ap = 110
      @all_quickskill_id = [4, 1, 2]
      @quickskill_level_required = [0, 1, 3]
      @atk_plus = val(13)
      @resurrection_speed_plus = val(-15)
      @regen_hp_plus = val(-15)
      @combo_status_effect = 0
    when 44
      @type = 3
      @base_ap = 140
      @all_quickskill_id = [0, 1, 2, 3]
      @quickskill_level_required = [0, 1, 3, 5]
      @atk_plus = val(12)
      @dex_plus = val(30)
      @regen_sp_plus = val(15)
    when 45
      @type = 3
      @base_ap = 200
      @all_quickskill_id = [3, 4, 5]
      @quickskill_level_required = [0, 1, 3]
      @atk_plus = val(15)
      @critical_hit_power_plus = val(15)
      @ignore_enemy_defense_prob_plus = val(25)
      @super_combo = true
    when 46
      @type = 3
      @base_ap = 180
      @all_quickskill_id = [0, 5, 3, 2]
      @quickskill_level_required = [0, 0, 2, 4]
      @atk_plus = val(15)
      @resurrection_speed_plus = val(25)
      @regen_hp_plus = val(25)
      @states_resistance_plus[4] = val(50)
    when 47
      @type = 3
      @base_ap = 220
      @all_quickskill_id = [1, 2, 5]
      @quickskill_level_required = [0, 1, 3]
      @atk_plus = val(18)
      @dex_plus = val(30)
      @elem_power_plus[3] = val(20)
      @elem_resist_plus[3] = val(20)
    when 48
      @type = 3
      @base_ap = 220
      @all_quickskill_id = [6, 0, 3, 4]
      @quickskill_level_required = [0, 1, 2, 4]
      @atk_plus = val(20)
      @hyper_time_plus = val(20)
      @survivor = true
    when 49
      @type = 3
      @base_ap = 260
      @all_quickskill_id = [0, 1, 4, 5]
      @quickskill_level_required = [0, 0, 2, 4]
      @atk_plus = val(28)
      @mp_plus = val(-40)
      @regen_mp_plus = val(-15)
      @immune_to_interruption = true
    when 50
      @type = 3
      @base_ap = 350
      @all_quickskill_id = [0, 1, 2, 6]
      @quickskill_level_required = [0, 0, 1, 3]
      @atk_plus = val(24)
      @regen_mp_plus = val(10)
      @regen_sp_plus = val(10)
      @states_resistance_plus[3] = val(50)
      @states_resistance_plus[4] = val(50)
    when 51
      @type = 3
      @base_ap = 450
      @all_quickskill_id = [0, 1, 2, 3, 4, 5, 6]
      @quickskill_level_required = [0, 0, 1, 2, 3, 4, 5]
      @atk_plus = val(30)
      @def_plus = val(5)
      @regen_hp_plus = val(25)
      @survivor = true
      @combo_status_effect = 0
    when 52
      @type = 3
      @base_ap = 450
      @all_quickskill_id = [0, 1, 2, 3, 4, 5, 6]
      @quickskill_level_required = [0, 0, 1, 2, 3, 4, 5]
      @atk_plus = val(32)
      @dex_plus = val(50)
      @critical_hit_power_plus = val(15)
      @cast_speed_plus = val(30)
      @combo_status_effect = 2
    when 61
      @type = 4
      @base_ap = 220
      @all_quickskill_id = [2, 4, 6]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(33)
      @regen_sp_plus = val(15)
      @guard_max_plus = val(15)
    when 62
      @type = 5
      @base_ap = 250
      @all_quickskill_id = [3, 4, 6]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(32)
      @elem_power_plus[2] = val(15)
      @states_resistance_plus[4] = val(50)
      @combo_status_effect = 4
    when 63
      @type = 6
      @base_ap = 250
      @all_quickskill_id = [0, 3, 5]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(32)
      @hyper_time_plus = val(20)
      @survivor = true
    when 64
      @type = 7
      @base_ap = 250
      @all_quickskill_id = [1, 4, 5]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(33)
      @ignore_enemy_defense_prob_plus = val(25)
      @states_resistance_plus[2] = val(50)
    when 65
      @type = 8
      @base_ap = 250
      @all_quickskill_id = [2, 3, 5]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(32)
      @critical_hit_power_plus = val(20)
      @elem_power_plus[3] = val(15)
    when 66
      @type = 9
      @base_ap = 250
      @all_quickskill_id = [0, 3, 6]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(33)
      @regen_hp_plus = val(20)
      @regen_sp_plus = val(15)
      @combo_status_effect = 2
    when 67
      @type = 10
      @base_ap = 250
      @all_quickskill_id = [1, 4, 6]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(34)
      @dex_plus = val(70)
      @resurrection_speed_plus = val(25)
      @combo_status_effect = 3
    when 68
      @type = 11
      @base_ap = 250
      @all_quickskill_id = [0, 3, 4]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(38)
      @ignore_enemy_defense_prob_plus = val(50)
      @combo_status_effect = 1
    when 69
      @type = 12
      @base_ap = 250
      @all_quickskill_id = [2, 3, 6]
      @quickskill_level_required = [0, 0, 2]
      @atk_plus = val(36)
      @guard_max_plus = val(15)
      @cast_speed_plus = 100000
      @hyper_time_plus = val(15)
      @ignore_damage_prob_plus = val(10)
    end
    available_skills
  end
end