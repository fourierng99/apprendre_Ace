class Game_Skill_Info
  
  attr_reader   :id
  attr_reader   :name
  attr_reader   :elements
  attr_reader   :main_element
  
  def initialize(id)
    @id = id
    @name = ""
    @elements = []
    setup(id)
    @main_element = @elements[0] ? @elements[0] : 0
  end
  
  def setup(id)
    @name = lang::SKILL_NAME[id] if lang::SKILL_NAME[id]
    case id
    when 21
      @elements = [1, 2]
    when 22
      @elements = [3]
    when 25
      @elements = [4]
    when 26
      @elements = [2]
    when 27
      @elements = [1]
    when 31
      @elements = [4]
    when 32
      @elements = [3]
    when 33
      @elements = [2]
    when 35
      @elements = [2]
    when 36
      @elements = [1]
    when 41
      @elements = [1]
    when 42
      @elements = [3]
    when 46
      @elements = [2, 3]
    when 47
      @elements = [4]
    when 51
      @elements = [1]
    when 52
      @elements = [2]
    when 53
      @elements = [3]
    when 54
      @elements = [4]
    when 55
      @elements = [1]
    when 56
      @elements = [2]
    when 57
      @elements = [3]
    when 58
      @elements = [4]
    when 59
      @elements = [1]
    when 60
      @elements = [2]
    when 61
      @elements = [3]
    when 62
      @elements = [4]
    when 103
      @elements = [4]
    when 136
      @elements = [1]
    when 155
      @elements = [2]
    when 156
      @elements = [2]
    when 159
      @elements = [2]
    when 160
      @elements = [2]
    when 171
      @elements = [3]
    when 172
      @elements = [3]
    when 184
      @elements = [1]
    when 193
      @elements = [4]
    when 194
      @elements = [1]
    when 195
      @elements = [2]
    when 196
      @elements = [3]
    when 208
      @elements = [3, 2]
    when 209
      @elements = [1, 4]
    when 245
      @elements = [3]
    when 246
      @elements = [3]
    when 257
      @elements = [2]
    when 263
      @elements = [3]
    when 269
      @elements = [3]
    when 274
      @elements = [2]
    when 275
      @elements = [3]
    when 288
      @elements = [4]
    when 318
      @elements = [4]
    when 319
      @elements = [4]
    when 327
      @elements = [1]
    when 339
      @elements = [1]
    when 379
      @elements = [3]
    when 380
      @elements = [4]
    when 542
      @elements = [3]
    when 563
      @elements = [4]
    when 564
      @elements = [4]
    when 570
      @elements = [3]
    when 571
      @elements = [3]
    when 907
      @elements = [1, 2]
    when 908
      @elements = [3]
    when 909
      @elements = [1, 2, 3, 4]
    when 910
      @elements = [3]
    when 918
      @elements = [2]
    when 919
      @elements = [2]
    when 927
      @elements = [1, 3]
    when 928
      @elements = [4]
    when 938
      @elements = [1]
    when 947
      @elements = [3]
    when 948
      @elements = [3]
    when 950
      @elements = [3]
    when 957
      @elements = [4]
    when 969
      @elements = [2]
    when 977
      @elements = [1]
    when 979
      @elements = [4]
    end
  end
end