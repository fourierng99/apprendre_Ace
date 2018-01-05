class Game_Party
  
  attr_reader   :checkpoint_map_id
  attr_reader   :checkpoint_x
  attr_reader   :checkpoint_y
  attr_reader   :gold
  attr_reader   :hyper_count
  attr_reader   :reserve_actors
  attr_accessor :difficulty
  attr_accessor :atk_bonus
  attr_accessor :def_bonus
  attr_accessor :wandering_soul
  attr_accessor :hyper
  attr_accessor :main_actor_id
  attr_accessor :zone_id
  attr_accessor :display_need_refresh
  attr_accessor :switch_by_death
  attr_accessor :enabled_spellcard
  attr_accessor :goods_level
  attr_accessor :zone_cleared
  attr_accessor :chaos_mode_unlocked
  
  def initialize
    super
    @checkpoint_map_id = 1
    @checkpoint_x = 1
    @checkpoint_y = 20
    @difficulty = 0
    @atk_bonus = 0
    @def_bonus = 0
    @gold = 0
    @wandering_soul = 0
    @hyper = false
    @hyper_count = 0
    @main_actor_id = 0
    @zone_id = 1
    @display_need_refresh = false
    @switch_by_death = false
    @enabled_spellcard = [false, false, false, false]
    @goods_level = 0
    @zone_cleared = [false, false, false, false, false, false, false, false, false]
    @chaos_mode_unlocked = false
    @reserve_actors = []
  end
  
  def actualize_data
    @reserve_actors = [] if @reserve_actors == nil
    @atk_bonus = 0 if @atk_bonus == nil
    @def_bonus = 0 if @def_bonus == nil
  end
  
  def new_checkpoint(map_id, x, y)
    @checkpoint_map_id = map_id
    @checkpoint_x = x
    @checkpoint_y = y
  end
  
  def hyper_count=(hyper_count)
    @hyper_count = Math.middle(0, hyper_count, hyper_max)
  end
  
  def hyper_max
    return 40
  end
  
  def gain_exp(exp)
    for i in 0...$game_actors.size
      actor = $game_actors[i]
      unless actor.is_dead?
        if @main_actor_id == i
          actor.gain_exp((exp*1.5).to_i)
        else
          actor.gain_exp(exp)
        end
      end
    end
    for actor in @reserve_actors
      actor.gain_exp(exp/2, true)
    end
  end
  
  def gain_ap(ap)
    for actor in $game_actors
      unless actor.is_dead?
        actor.gain_ap(ap)
      end
    end
  end
  
  def gain_gold(n)
    @gold = [[@gold + n, 0].max, 9999].min
  end
  
  def lose_gold(n)
    gain_gold(-n)
  end
  
  def add_actor(id)
    if $game_actors.size < max_members
      $game_actors.push(Game_Actor.new(id))
      @display_need_refresh = true
    else
      @reserve_actors.push(Game_Actor.new(id))
    end
  end
  
  def remove_actor(id)
    for i in 0...$game_actors.size
      if $game_actors[i].actor_id == id
        @reserve_actors.push($game_actors[i])
        $game_actors[i] = nil
        break
      end
    end
    $game_actors.compact!
    @main_actor_id = Math.min(@main_actor_id, $game_actors.size-1)
    @display_need_refresh = true
  end
  
  def switch_actor(id, new_id)
    index = -1
    transferred_actor = nil
    for i in 0...$game_actors.size
      if $game_actors[i].actor_id == id
        index = i
        transferred_actor = $game_actors[i]
        break
      end
    end
    if index == -1
      if $game_actors.size < max_members
        index = $game_actors.size
      else
        return
      end
    end
    in_reserve = false
    for i in 0...@reserve_actors.size
      if @reserve_actors[i].actor_id == new_id
        in_reserve = true
        $game_actors[index] = @reserve_actors[i]
        @reserve_actors[i] = transferred_actor
        break
      end
    end
    unless in_reserve
      if new_id > 0
        $game_actors[index] = Game_Actor.new(new_id)
      else
        $game_actors[index] = nil
        $game_actors.compact!
      end
      @reserve_actors.push(transferred_actor)
    end
    @reserve_actors.compact!
    for i in 0...$game_actors.size
      next if i == index
      actor = $game_actors[i]
      for j in 0...4
        ac_id = $game_actors[index].accessory(j).id
        if ac_id > 0 and actor.accessory_id.include?(ac_id)
          $game_actors[index].equip_accessory(j, 0)
        end
      end
    end
    if @main_actor_id == index
      $game_player.setup_new_main_character($game_actors[index].actor_id, true)
    end
    $display.switch_change
  end
  
  def max_members
    return 3
  end
  
  def select_next_player(n)
    s = $game_actors.size
    s.times do
      @main_actor_id = (@main_actor_id+n)%s
      unless $game_actors[@main_actor_id].is_dead?
        break
      end
    end
  end
  
  def next_player_id(n)
    id = @main_actor_id
    s = $game_actors.size
    s.times do
      id = (id+n)%s
      unless $game_actors[id].is_dead?
        break
      end
    end
    return id
  end
  
  def auto_select_new_player
    for i in 0...$game_actors.size
      actor = $game_actors[i]
      if i != @main_actor_id and not actor.is_dead?
        @main_actor_id = i
        break
      end
    end
    @switch_by_death = true
  end
  
  def alive_members
    i = 0
    for actor in $game_actors
      unless actor.is_dead?
        i += 1
      end
    end
    return i
  end
  
  def all_dead?
    for actor in $game_actors
      unless actor.is_dead?
        return false
      end
    end
    return true
  end
  
  def in_main_team?(id)
    for i in 0...$game_actors.size
      return true if $game_actors[i].actor_id == id
    end
    return false
  end
  
  def damage_coef
    return @difficulty==0 ? 1 : @difficulty==1 ? 2 : 4
  end
  
  def average_party_level
    l = 0
    if $game_actors.size > 0
      for actor in $game_actors
        l += actor.level
      end
      l /= $game_actors.size
    end
    return l
  end
end
