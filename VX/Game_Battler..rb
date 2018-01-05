class Game_Battler
  
  attr_reader   :hp
  attr_reader   :immortal
  attr_reader   :end_of_life
  attr_reader   :lifespan
  attr_reader   :life_count
  attr_reader   :guard_count
  attr_reader   :casting_count
  attr_reader   :states
  attr_reader   :states_duration
  attr_reader   :max_attacks
  attr_reader   :combo_attack_id
  attr_reader   :quickskill_id
  attr_reader   :spellcard_id
  attr_reader   :spellcard_casting_value
  
  def initialize
    @hp = 0
    @immortal = false
    @end_of_life = false
    @lifespan = 0
    @life_count = 0
    @guard_count = 0
    @base_guard_max = 2250 #30% max hp
    @base_cast_speed = 100
    @casting_count = 0
    @states = []
    @states_duration = []
    @resist_states = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    @base_elem_power = [0, 0, 0, 0, 0]
    @base_elem_resist = [0, 0, 0, 0, 0]
    @immune_to_bump = false
    @max_attacks = 1
    @combo_attack_id = [0]
    @quickskill_id = []
    @spellcard_id = []
    @spellcard_casting_value = []
  end
  
  def guard_count=(guard_count)
    @guard_count = Math.middle(0, guard_count, guard_max)
  end
  
  def guard_max
    return @base_guard_max
  end
  
  def casting_count=(casting_count)
    @casting_count = Math.min(casting_count, casting_max)
  end
  
  def casting_max
    max = (120000/cast_speed).to_i
    return max
  end
  
  def activate_hyper_mode
    Sound.play_hyper_on
    clear_bad_states
  end
  
  def deactivate_hyper_mode
    Sound.play_hyper_off
  end
  
  def hp=(hp)
    @hp = Math.middle(0, hp, maxhp)
  end
  
  def reduce_guard(val)
    self.guard_count -= val
  end
  
  def is_dead?
    return (@hp==0)
  end
  
  def kill_battler
    @end_of_life = true
  end
  
  def is_poisoned?
    return @states.include?(0)
  end
  
  def is_stunned?
    return @states.include?(1)
  end
  
  def is_weakened?
    return @states.include?(2)
  end
  
  def is_silent?
    return @states.include?(3)
  end
  
  def is_frozen?
    return @states.include?(4)
  end
  
  def guard_broken?
    return @states.include?(5)
  end
  
  def is_vulnerable?
    return @states.include?(6)
  end
  
  def is_recovered?
    return @states.include?(7)
  end
  
  def is_strengthened?
    return @states.include?(8)
  end
  
  def is_protected?
    return @states.include?(9)
  end
  
  def is_invincible?
    return @states.include?(10)
  end
  
  def cannot_switch_players?
    return @states.include?(11)
  end
  
  def add_state(id, duration)
    return if (hyper_mode or is_invincible?) and (id < 5 or id == 6)
    return if duration < 1
    duration = Math.min(duration, 5999)
    i = @states.index(id)
    if i != nil
      @states_duration[i] = Math.max(duration, @states_duration[i])
    else
      @states.push(id)
      @states_duration.push(duration)
    end
  end
  
  def remove_state(id)
    for i in 0...@states.size
      if @states[i] == id
        @states[i] = nil
        @states_duration[i] = nil
        break
      end
    end
    @states.compact!
    @states_duration.compact!
  end
  
  def reduce_duration(i, dur)
    @states_duration[i] -= dur
  end
  
  def states_resistance(id)
    return @resist_states[id]
  end
  
  def clear_states
    @states.clear
    @states_duration.clear
  end
  
  def clear_bad_states
    for i in 0...@states.size
      if @states[i] < 7
        @states[i] = nil
        @states_duration[i] = nil
      end
    end
    @states.compact!
    @states_duration.compact!
  end
  
  def immune_to_bump?
    return @immune_to_bump
  end
  
  def attack_effect(dmg, states, states_duration)
    return if is_dead?
    self.hp -= dmg
    for i in 0...states.size
      add_state(states[i], states_duration[i])
    end
    clear_states if is_dead?
  end
  
  def update
    @life_count += 1
    if @lifespan > 0 and @life_count == @lifespan
      @end_of_life = true
    end
    self.guard_count += guard_max/300.0
    need_compact = false
    for i in 0...@states.size
      if @states_duration[i] < 5999
        if @states_duration[i] > 0
          @states_duration[i] -= 1
        else
          need_compact = true
          @states[i] = nil
          @states_duration[i] = nil
        end
      end
    end
    if need_compact
      @states.compact!
      @states_duration.compact!
    end
  end
  
end
