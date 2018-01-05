class Game_Actor < Game_Battler
  
  attr_reader   :actor_id
  attr_reader   :name
  attr_reader   :first_name
  attr_reader   :face_name
  attr_reader   :weapon_id
  attr_reader   :accessory_id
  attr_reader   :level
  attr_reader   :exp
  attr_reader   :quickskill_cost
  attr_reader   :quickskill_level
  attr_reader   :spellcard_cost
  attr_reader   :spellcard_level
  attr_reader   :mp
  attr_reader   :sp
  attr_reader   :resurrection_count
  attr_accessor :just_resurrect
  
  def initialize(actor_id)
    super()
    @actor = $data_actors[actor_id]
    @actor_id = actor_id
    @name = @actor.name
    n = @name.index(" ")
    @first_name = n ? @name[0, n] : @name.dup
    @face_name = ""
    @weapon_id = actor_id < 4 ? -19+20*actor_id : 57+actor_id
    weapon.owned = true
    @accessory_id = [0, 0, 0, 0]
    @level = @actor.initial_level
    @exp_list = Array.new(101)
    make_exp_list
    @exp = @exp_list[@level]
    @coef_maxhp = 0
    @coef_maxmp = 0
    @coef_maxsp = 0
    @coef_atk = 0
    @coef_def = 0
    @base_dex = 0
    @base_critical_hit_power = 150
    @base_regen_hp = 100
    @base_regen_mp = 100
    @base_regen_sp = 100
    @base_resurrection_speed = 100
    @hp_plus = 0.0
    @mp_plus = 0.0
    @sp_plus = 0.0
    @quickskill_cost = []
    @quickskill_counter = [0, 0, 0, 0, 0, 0, 0]
    @quickskill_exp_coef = [1, 1, 1, 1, 1, 1, 1]
    @quickskill_level = [0, 0, 0, 0, 0, 0, 0]
    @spellcard_cost = []
    @spellcard_counter = [0, 0, 0, 0]
    @spellcard_exp_coef = [1, 1, 1, 1]
    @spellcard_level = [0, 0, 0, 0]
    setup(actor_id)
    @hp = maxhp
    @mp = maxmp
    @sp = maxsp
    @resurrection_count = 0
    @just_resurrect = false
    @guard_count = guard_max
  end
  
  def recap_stats
    @hp = Math.min(@hp, maxhp)
    @mp = Math.min(@mp, maxmp)
    @sp = Math.min(@sp, maxsp)
  end
  
  def weapon
    return $game_weapons[@weapon_id]
  end
  
  def accessory(i)
    return $game_accessories[@accessory_id[i]]
  end
  
  def equip_weapon(id)
    @weapon_id = id
    check_auto_regen
    recap_stats
  end
  
  def equip_accessory(slot, id)
    @accessory_id[slot] = id
    check_auto_regen
    recap_stats
  end
  
  def make_exp_list
    @exp_list[1] = @exp_list[100] = 0
    pow_i = 2.5
    for i in 2..99
      n = 40 * ((i + 3) ** pow_i) / (5 ** pow_i)
      @exp_list[i] = @exp_list[i-1] + Integer(n)
    end
  end
  
  def gain_exp(exp, reserve_actor = false)
    coef = reserve_actor ? 100 : coef_exp
    exp = exp*coef/100
    @exp = Math.middle(0, @exp+exp, 9999999)
    while @exp >= @exp_list[@level+1] and @exp_list[@level+1] > 0
      level_up(reserve_actor)
    end
    while @exp < @exp_list[@level]
      level_down
    end
    recap_stats
  end
  
  def coef_exp
    coef = 100
    coef += weapon.exp_plus
    for i in 0..3 do coef += accessory(i).exp_plus end
    return coef
  end
  
  def level_up(reserve_actor = false)
    @level += 1
    unless reserve_actor
      Sound.play_level_up
      $display.create_info(1, [@first_name, @level]) if $display
    end
  end
  
  def level_down
    @level -= 1
  end
  
  def diff_exp
    return @exp_list[@level+1] > 0 ? @exp_list[@level+1]-@exp_list[@level] : 0
  end
  
  def next_rest_exp
    return @exp_list[@level+1] > 0 ?
    @exp_list[@level+1] - @exp : 0
  end
  
  def gain_ap(ap)
    ap = ap*coef_ap/100
    weapon.gain_ap(ap)
    for i in 0..3 do accessory(i).gain_ap(ap) end
  end
  
  def coef_ap
    coef = 100
    coef += weapon.ap_plus
    for i in 0..3 do coef += accessory(i).ap_plus end
    return coef
  end
  
  def increment_quickskill_counter(i)
    @quickskill_counter[i] += 1
    coef = Math.max(1, @quickskill_exp_coef[i])
    l = ((@quickskill_counter[i]/coef.to_f)**0.65).to_i
    @quickskill_level[i] = Math.middle(0, l, 10)
  end
  
  def increment_spellcard_counter(i)
    @spellcard_counter[i] += 1
    coef = Math.max(1, @spellcard_exp_coef[i])
    l = ((@spellcard_counter[i]/coef.to_f)**0.65).to_i
    @spellcard_level[i] = Math.middle(0, l, 10)
  end
  
  def skill_level(id)    
    if (c = @quickskill_id.index(id)) != nil
      return @quickskill_level[c]
    elsif (c = @spellcard_id.index(id)) != nil
      return @spellcard_level[c]
    end
    return 0
  end
  
  def hyper_mode
    return $game_party.hyper
  end
  
  def activate_hyper_mode
    $game_party.hyper = true
    super
  end
  
  def deactivate_hyper_mode
    return if $game_temp.infinite_hyper
    $game_party.hyper = false
    $game_party.hyper_count = ($game_party.hyper_count-4).truncate
    super
  end
  
  def clear_cannot_switch_players_state
    index = @states.index(11)
    if index
      @states.delete_at(index)
      @states_duration.delete_at(index)
    end 
  end
  
  def maxhp_bar
    return 1
  end
  
  def maxhp
    base_maxhp = Integer((30+@level)*@coef_maxhp)
    coef = 100
    for i in 0..3 do coef += accessory(i).hp_plus end
    total_maxhp = (base_maxhp + weapon.hp_plus)*coef/100
    return Math.middle(1, total_maxhp, 1000)
  end
  
  def maxmp
    base_maxmp = Integer((45+@level)*@coef_maxmp)
    coef = 100
    for i in 0..3 do coef += accessory(i).mp_plus end
    total_maxmp = (base_maxmp + weapon.mp_plus)*coef/100
    return Math.middle(1, total_maxmp, 400)
  end
  
  def maxsp
    base_maxsp = Integer((66+@level)*@coef_maxsp)
    coef = 100
    for i in 0..3 do coef += accessory(i).sp_plus end
    total_maxsp = (base_maxsp + weapon.sp_plus)*coef/100
    return Math.middle(1, total_maxsp, 400)
  end
  
  def mp=(mp)
    @mp = Math.middle(0, mp, maxmp)
  end
  
  def sp=(sp)
    @sp = Math.middle(0, sp, maxsp)
  end
  
  def normal_atk
    base_atk = Integer((10+@level)*@coef_atk)+$game_party.atk_bonus
    coef = 100
    for i in 0..3 do coef += accessory(i).atk_plus end
    total_atk = (base_atk + weapon.atk_plus)*coef/100
    return total_atk
  end
  
  def atk
    coef = 100
    coef -= 25 if is_weakened?
    coef += 25 if is_strengthened?
    total_atk = normal_atk*coef/100
    return Math.max(1, total_atk)
  end
  
  def def
    base_def = Integer((10+@level)*@coef_def)+$game_party.def_bonus
    coef = 100
    for i in 0..3 do coef += accessory(i).def_plus end
    total_def = (base_def + weapon.def_plus)*coef/100
    return Math.max(1, total_def)
  end
  
  def dex
    coef = 100
    for i in 0..3 do coef += accessory(i).dex_plus end
    total_dex = (@base_dex + weapon.dex_plus)*coef/100
    return Math.middle(0, total_dex, 1000)
  end
  
  def coef_guard_max
    coef = 100
    coef += weapon.guard_max_plus
    for i in 0..3 do coef += accessory(i).guard_max_plus end
    return Math.max(0, coef)
  end
  
  def guard_max
    total_guard_max = @base_guard_max*coef_guard_max/100
    return total_guard_max
  end
  
  def cast_speed
    coef = 100
    coef += weapon.cast_speed_plus
    for i in 0..3 do coef += accessory(i).cast_speed_plus end
    total_cast_speed = @base_cast_speed*coef/100
    return Math.middle(1, total_cast_speed, 99999)
  end
  
  def resurrection_speed
    coef = 100
    coef += weapon.resurrection_speed_plus
    for i in 0..3 do coef += accessory(i).resurrection_speed_plus end
    total_resurrection_speed = @base_resurrection_speed*coef/100
    return Math.max(1, total_resurrection_speed)
  end
  
  def coef_hyper_time
    coef = 100
    coef += weapon.hyper_time_plus
    for i in 0..3 do coef += accessory(i).hyper_time_plus end
    return Math.max(1, coef)
  end
  
  def hyper_time
    total_hyper_time = 25.0*coef_hyper_time/100
    return total_hyper_time
  end
  
  def critical_hit_power
    coef = 100
    coef += weapon.critical_hit_power_plus
    for i in 0..3 do coef += accessory(i).critical_hit_power_plus end
    total_critical_hit_power = @base_critical_hit_power*coef/100
    return Math.max(1, total_critical_hit_power)
  end
  
  def regen_hp
    coef = 100
    coef += weapon.regen_hp_plus
    for i in 0..3 do coef += accessory(i).regen_hp_plus end
    total_regen_hp = @base_regen_hp*coef/100
    return total_regen_hp
  end
  
  def normal_regen_mp
    coef = 100
    coef += weapon.regen_mp_plus
    for i in 0..3 do coef += accessory(i).regen_mp_plus end
    total_regen_mp = @base_regen_mp*coef/100
    return total_regen_mp
  end
  
  def regen_mp
    total_regen_mp = normal_regen_mp
    if hyper_mode and $game_actors[$game_party.main_actor_id] == self
      total_regen_mp *= 2
    end
    return total_regen_mp
  end
  
  def normal_regen_sp
    coef = 100
    coef += weapon.regen_sp_plus
    for i in 0..3 do coef += accessory(i).regen_sp_plus end
    total_regen_sp = @base_regen_sp*coef/100
    return total_regen_sp
  end
  
  def regen_sp
    total_regen_sp = normal_regen_sp
    if hyper_mode
      total_regen_sp *= 2
    end
    return total_regen_sp
  end
  
  def elem_power(id)
    coef = 0
    coef += weapon.elem_power_plus[id]
    for i in 0..3 do coef += accessory(i).elem_power_plus[id] end
    total_elem_power = @base_elem_power[id]+coef
    return Math.middle(0, total_elem_power, 100)
  end
  
  def elem_resist(id)
    coef = 0
    coef += weapon.elem_resist_plus[id]
    for i in 0..3 do coef += accessory(i).elem_resist_plus[id] end
    total_elem_resist = @base_elem_resist[id]+coef
    return Math.middle(-100, total_elem_resist, 100)
  end
  
  def states_resistance(id)
    coef = 0
    coef += weapon.states_resistance_plus[id]
    for i in 0..3 do coef += accessory(i).states_resistance_plus[id] end
    total_states_resist = @resist_states[id]+coef
    return Math.middle(0, total_states_resist, 100)
  end
  
  def combo_status_effect
    return weapon.combo_status_effect
  end
  
  def super_combo?
    result = false
    result = true if weapon.super_combo
    for i in 0..3 do result = true if accessory(i).super_combo end
    return result
  end
  
  def immune_to_interruption?
    result = false
    result = true if weapon.immune_to_interruption
    for i in 0..3 do result = true if accessory(i).immune_to_interruption end
    return result
  end
  
  def auto_regen?
    result = false
    result = true if weapon.auto_regen
    for i in 0..3 do result = true if accessory(i).auto_regen end
    return result
  end
  
  def survivor_effect?
    result = false
    result = true if weapon.survivor
    for i in 0..3 do result = true if accessory(i).survivor end
    return result
  end
  
  def flask_drop_rate
    coef = 100
    for i in 0..3 do coef += accessory(i).flask_drop_rate_plus end
    return Math.middle(0, coef, 200)
  end
  
  def hyper_drop_rate
    coef = 100
    for i in 0..3 do coef += accessory(i).hyper_drop_rate_plus end
    return Math.middle(0, coef, 300)
  end
  
  def ignore_damage_prob
    prob = 0
    prob += weapon.ignore_damage_prob_plus
    for i in 0..3 do prob += accessory(i).ignore_damage_prob_plus end
    return Math.middle(0, prob, 80)
  end
  
  def ignore_enemy_defense_prob
    prob = 0
    prob += weapon.ignore_enemy_defense_prob_plus
    for i in 0..3 do prob += accessory(i).ignore_enemy_defense_prob_plus end
    return Math.middle(0, prob, 100)
  end
  
  def quickskill_can_use?(id)
    quickskill_index = weapon.quickskill_id.index(id)
    if quickskill_index      
      return (@quickskill_id[id] != nil and @sp >= @quickskill_cost[id])
    else
      return false
    end
  end
  
  def spellcard_can_use?(id)
    return (@spellcard_id[id] != nil and $game_party.enabled_spellcard[id] and
    @mp >= @spellcard_cost[id])
  end
  
  def check_auto_regen
    if auto_regen?
      add_state(7, 9999)
    elsif is_recovered?
      if @states_duration[@states.index(7)] == 5999
        remove_state(7)
      end
    end
  end
  
  def switch_players
    clear_states
    deactivate_hyper_mode if hyper_mode
    @guard_count = guard_max
  end
  
  def refresh
    if is_dead?
      @resurrection_count += resurrection_speed
      if @resurrection_count >= 360000
        Sound.play_resurrection
        @resurrection_count = 0
        @just_resurrect = true
        self.hp = maxhp/2
        self.mp = maxmp/2
        self.sp = maxsp
      end
    else
      if $game_actors[$game_party.main_actor_id] != self
        @hp_plus += (maxhp*regen_hp/100)/6000.0
        bonus_hp = @hp_plus.to_i
        @hp_plus -= bonus_hp
        self.hp += bonus_hp
      end
      @mp_plus += (maxmp*regen_mp/100)/14400.0
      bonus_mp = @mp_plus.to_i
      @mp_plus -= bonus_mp
      self.mp += bonus_mp
      @sp_plus += (maxsp*regen_sp/100)/1500.0
      bonus_sp = @sp_plus.to_i
      @sp_plus -= bonus_sp
      self.sp += bonus_sp
    end
  end
  
  def change_map
    if is_dead?
      @resurrection_count = 360000
    else
      self.hp = maxhp/2 if self.hp < maxhp/2
    end
    deactivate_hyper_mode if hyper_mode
    @guard_count = guard_max
    clear_bad_states
    clear_cannot_switch_players_state
  end
  
  def full_recover
    @resurrection_count = 0
    self.hp = maxhp
    self.mp = maxmp
    self.sp = maxsp
    deactivate_hyper_mode if hyper_mode
    @guard_count = guard_max
    clear_bad_states
    clear_cannot_switch_players_state
  end
  
  def update
    if hyper_mode
      unless $game_temp.infinite_hyper
        $game_party.hyper_count -= 1/hyper_time
        if $game_party.hyper_count == 0 or is_dead?
          deactivate_hyper_mode
        end
      end
    end
    super
  end
end
