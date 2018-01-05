class Game_Zone_Info
  
  attr_reader   :id
  attr_reader   :name
  attr_reader   :player_starting_position
  attr_reader   :unlock_conditions
  attr_reader   :stages
  
  def initialize(id)
    @id = id
    @name = ""
    @player_starting_position = [3, 1, 19]
    @unlock_struct = Struct.new(:condition_type, :value)
    @unlock_conditions = []
    @stages = []
    setup(id)
  end
  
  def setup(id)
    case id
    when 0
      @name = lang::G_ZONE_INFO[0]
    when 1
      @name = lang::G_ZONE_INFO[1]
      @player_starting_position = [3, 1, 19]
      for i in 1..4 do @stages.push(Game_Stage_Info.new(i)) end
      @stages.push(Game_Stage_Info.new(41))
    when 2
      @name = lang::G_ZONE_INFO[2]
      @player_starting_position = [23, 1, 20]
      for i in 5..9 do @stages.push(Game_Stage_Info.new(i)) end
      @stages.push(Game_Stage_Info.new(42))
      @unlock_conditions.push(@unlock_struct.new(1, 1))
    when 3
      @name = lang::G_ZONE_INFO[3]
      @player_starting_position = [57, 1, 20]
      for i in 10..15 do @stages.push(Game_Stage_Info.new(i)) end
      @stages.push(Game_Stage_Info.new(43))
      @unlock_conditions.push(@unlock_struct.new(1, 2))
    when 4
      @name = lang::G_ZONE_INFO[4]
      @player_starting_position = [98, 1, 19]
      for i in 16..21 do @stages.push(Game_Stage_Info.new(i)) end
      @stages.push(Game_Stage_Info.new(44))
      @unlock_conditions.push(@unlock_struct.new(1, 3))
    when 5
      @name = lang::G_ZONE_INFO[5]
      @player_starting_position = [146, 1, 11]
      for i in 22..27 do @stages.push(Game_Stage_Info.new(i)) end
      @stages.push(Game_Stage_Info.new(45))
      @unlock_conditions.push(@unlock_struct.new(1, 3))
      @unlock_conditions.push(@unlock_struct.new(0, 30))
    when 6
      @name = lang::G_ZONE_INFO[6]
      @player_starting_position = [186, 1, 22]
      for i in 28..33 do @stages.push(Game_Stage_Info.new(i)) end
      @stages.push(Game_Stage_Info.new(46))
      @unlock_conditions.push(@unlock_struct.new(1, 3))
      @unlock_conditions.push(@unlock_struct.new(0, 45))
    when 7
      @name = lang::G_ZONE_INFO[7]
      @player_starting_position = [231, 1, 21]
      for i in 34..40 do @stages.push(Game_Stage_Info.new(i)) end
      @stages.push(Game_Stage_Info.new(47))
      @unlock_conditions.push(@unlock_struct.new(1, 4))
      @unlock_conditions.push(@unlock_struct.new(1, 5))
      @unlock_conditions.push(@unlock_struct.new(1, 6))
      @unlock_conditions.push(@unlock_struct.new(0, 60))
    when 8
      @name = lang::G_ZONE_INFO[8]
      @player_starting_position = [138, 1, 15]
      @stages.push(Game_Stage_Info.new(101))
    when 9
      @name = lang::G_ZONE_INFO[9]
      @player_starting_position = [333, 1, 23]
      for i in 48..50 do @stages.push(Game_Stage_Info.new(i)) end
      @unlock_conditions.push(@unlock_struct.new(0, 180))
    when 10
      @name = lang::G_ZONE_INFO[10]
      @player_starting_position = [226, 1, 15]
      @unlock_conditions.push(@unlock_struct.new(1, 4))
      @unlock_conditions.push(@unlock_struct.new(1, 5))
      @unlock_conditions.push(@unlock_struct.new(1, 6))
      @unlock_conditions.push(@unlock_struct.new(0, 60))
    when 100
      @name = lang::G_ZONE_INFO[11]
      @player_starting_position = $game_party.enabled_spellcard[0] ? 
      [234, 1, 20] : [24, 1, 20]
    when 101
      @name = lang::G_ZONE_INFO[12]
      @player_starting_position = $game_party.enabled_spellcard[1] ? 
      [235, 1, 15] : [56, 1, 15]
    when 102
      @name = lang::G_ZONE_INFO[13]
      @player_starting_position = $game_party.enabled_spellcard[2] ? 
      [236, 1, 20] : [100, 1, 20]
    when 103
      @name = lang::G_ZONE_INFO[14]
      @player_starting_position = $game_party.enabled_spellcard[3] ? 
      [237, 1, 13] : [148, 1, 13]
    when 200
      @name = lang::G_ZONE_INFO[15]
      @player_starting_position = [233, 1, 16]
    end
  end
end