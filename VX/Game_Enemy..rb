class Game_Enemy < Game_Battler
  
  attr_reader   :enemy_id
  attr_reader   :name
  attr_reader   :face_name
  attr_reader   :boss
  attr_reader   :no_hp_bar
  attr_reader   :small_bar_type
  attr_reader   :hyper_count
  attr_reader   :action_frequency
  attr_reader   :base_action_set
  attr_reader   :casting_action_set
  attr_reader   :hyper_action_set
  attr_reader   :exp_gain
  attr_reader   :ap_gain
  attr_reader   :hyper_gain
  attr_reader   :drop_list
  attr_accessor :boss_bar_drop_list
  
  def initialize(enemy_id)
    super()
    @enemy = $data_enemies[enemy_id]
    @enemy_id = enemy_id
    @name = @enemy.name
    @face_name = ""
    @boss = false
    @no_hp_bar = false
    @small_bar_type = 0
    @survival_scaling_level = 0
    @survival_scaling_hp_value = 5
    @base_maxhp_bar = 1
    @base_hyper_max = 20
    @ignore_enemy_defense_prob = 0
    @immune_to_interruption = false
    @action_frequency = 30
    @base_action_set = {}
    @casting_action_set = {}
    @hyper_action_set = {}
    @drop_list = {}
    @boss_bar_drop_list = []
    @exp_gain = @enemy.exp
    @ap_gain = @enemy.gold
    @hyper_gain = @enemy.eva
    send("setup#{enemy_id}")
    @base_maxhp = @enemy.maxhp
    @base_atk = @enemy.atk
    @base_def = @enemy.def
    if $game_temp.survival_mode
      diff_level = $game_party.average_party_level-@survival_scaling_level
      diff_level += ($game_temp.survival_infinite_var*2)**1.5 if $game_temp.survival_infinite_var > 0
      if diff_level > 0
        @base_maxhp += @survival_scaling_hp_value*diff_level
        @base_atk += Integer(0.5*diff_level)
        @base_def += Integer(0.7*diff_level)
      end
    end
    @maxhp = (@base_maxhp*(1.0+$game_party.difficulty*0.2)).to_i
    @base_maxhp_bar = Math.min(@base_maxhp_bar, 8)
    @hp = maxhp
    @guard_count = guard_max
    @hyper = false
    @hyper_count = hyper_max
  end
  
  def hyper_count=(hyper_count)
    @hyper_count = Math.middle(0, hyper_count, hyper_max)
  end
  
  def hyper_max
    return @base_hyper_max
  end
  
  def hyper_mode
    return @hyper
  end
  
  def activate_hyper_mode
    @hyper = true
    super
  end
  
  def deactivate_hyper_mode
    @hyper = false
    super
    self.hyper_count = hyper_max
  end
  
  def maxhp_bar
    return @base_maxhp_bar
  end
  
  def maxhp
    return @maxhp
  end
  
  def atk
    coef = 100
    coef -= 25 if is_weakened?
    coef += 25 if is_strengthened?
    total_atk = @base_atk*coef/100
    return total_atk
  end
  
  def def
    return @base_def
  end
  
  def dex
    return @enemy.agi
  end
  
  def cast_speed
    return @base_cast_speed
  end
  
  def critical_hit_power
    return 150
  end
  
  def elem_power(id)
    total_elem_power = @base_elem_power[id]
    return Math.middle(0, total_elem_power, 100)
  end
  
  def elem_resist(id)
    total_elem_resist = @base_elem_resist[id]
    return Math.middle(-100, total_elem_resist, 100)
  end
  
  def immune_to_interruption?
    return @immune_to_interruption
  end
  
  def ignore_enemy_defense_prob
    return @ignore_enemy_defense_prob
  end
  
  def combo_status_effect
    return -1
  end
  
  def super_combo?
    return false
  end
  
  def update
    if @hyper
      self.hyper_count -= 1/25.0 if self.hyper_count < 1000
      if self.hyper_count == 0 or is_dead?
        deactivate_hyper_mode
      end
    end
    super
  end
end
