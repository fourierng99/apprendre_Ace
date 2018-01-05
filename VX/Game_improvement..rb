class Game_Improvement
  
  attr_reader   :id
  attr_reader   :name
  attr_reader   :icon_index
  
  def initialize(index)
    @id = index
    @name = @id==1 ? lang::SC_SHOP[4] : lang::SC_SHOP[5]
    @icon_index = @id==1 ? 144 : 145
  end
  
  def price
    return @id==1 ? 100+25*$game_party.atk_bonus : 100+50*$game_party.def_bonus
  end
end