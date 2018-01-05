class Game_Accessory
  
  attr_reader   :id
  attr_reader   :icon_index
  attr_reader   :cannot_evolve
  attr_reader   :price
  attr_reader   :elements
  attr_reader   :level
  attr_reader   :ap
  attr_reader   :atk_plus
  attr_reader   :def_plus
  attr_reader   :dex_plus
  attr_reader   :guard_max_plus
  attr_reader   :cast_speed_plus
  attr_reader   :hyper_time_plus
  attr_reader   :resurrection_speed_plus
  attr_reader   :critical_hit_power_plus
  attr_reader   :hp_plus
  attr_reader   :mp_plus
  attr_reader   :sp_plus
  attr_reader   :regen_hp_plus
  attr_reader   :regen_mp_plus
  attr_reader   :regen_sp_plus
  attr_reader   :elem_power_plus
  attr_reader   :elem_resist_plus
  attr_reader   :states_resistance_plus
  attr_reader   :super_combo
  attr_reader   :immune_to_interruption
  attr_reader   :auto_regen
  attr_reader   :survivor
  attr_reader   :exp_plus
  attr_reader   :ap_plus
  attr_reader   :ignore_enemy_defense_prob_plus
  attr_reader   :ignore_damage_prob_plus
  attr_reader   :flask_drop_rate_plus
  attr_reader   :hyper_drop_rate_plus
  attr_reader   :additional_text
  attr_accessor :owned
  
  def initialize(index)
    @id = index
    @owned = false
    @level = 0
    @ap = 0
    load_data
  end
  
  def load_data
    accessory = $data_armors[@id] ? $data_armors[@id] : nil
    @icon_index = accessory ? accessory.icon_index : 0
    @price = accessory ? accessory.price : 0
    @elements = []
    @base_ap = 0
    @atk_plus = 0
    @def_plus = 0
    @dex_plus = 0
    @guard_max_plus = 0
    @cast_speed_plus = 0
    @hyper_time_plus = 0
    @resurrection_speed_plus = 0
    @critical_hit_power_plus = 0
    @hp_plus = 0
    @mp_plus = 0
    @sp_plus = 0
    @regen_hp_plus = 0
    @regen_mp_plus = 0
    @regen_sp_plus = 0
    @elem_power_plus = [0, 0, 0, 0, 0]
    @elem_resist_plus = [0, 0, 0, 0, 0]
    @states_resistance_plus = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    @super_combo = false
    @immune_to_interruption = false
    @auto_regen = false
    @survivor = false
    @exp_plus = 0
    @ap_plus = 0
    @ignore_enemy_defense_prob_plus = 0
    @ignore_damage_prob_plus = 0
    @flask_drop_rate_plus = 0
    @hyper_drop_rate_plus = 0
    @additional_text = 0
    setup(@id)
    @cannot_evolve = (@base_ap==0 and @id>0)
    make_ap_list    
  end
  
  def name
    return $data_armors[@id] ? $data_armors[@id].name : ""
  end
  
  def val(n)
    return (n*(1.0+0.2*@level)).to_i
  end
  
  def make_ap_list
    @ap_list = []
    @ap_list[0] = 0
    if @base_ap == 0
      @ap_list[1] = 0
    else
      @ap_list[1] = @base_ap
      @ap_list[2] = @ap_list[1] + (@base_ap*1.5).to_i
      @ap_list[3] = @ap_list[2] + (@base_ap*2.5).to_i
      @ap_list[4] = @ap_list[3] + (@base_ap*4).to_i
      @ap_list[5] = @ap_list[4] + (@base_ap*6).to_i
      @ap_list[6] = 0
    end
  end
  
  def gain_ap(ap)
    return if @id == 0
    @ap = Math.middle(0, @ap+ap, 9999999)
    while @ap >= @ap_list[@level+1] and @ap_list[@level+1] > 0
      level_up
    end
  end
  
  def level_up
    @level += 1
    setup(@id)
    Sound.play_level_up
    $display.create_info(22, [name, @icon_index, @level]) if $display
  end
  
  def diff_ap
    return @ap_list[@level+1] > 0 ? @ap_list[@level+1]-@ap_list[@level] : 0
  end
  
  def next_rest_ap
    return @ap_list[@level+1] > 0 ?
    @ap_list[@level+1] - @ap : 0
  end
end