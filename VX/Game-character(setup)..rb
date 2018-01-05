class Game_Character
  
  def setup1
    @character_name = "Reimu/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "c3", "c4", "c5", "c6", 
    "s1", "s2_s3", "s2_s3", "s4", "s5", "s6", "s7"]
    @pattern_speed = [5, 5, 5, 5, 3, 
    5, 5, 5, 5, 10, 
    2, 2, 3, 4, 4, 8, 
    4, 4, 4, 5, 3, 5, 4]
    @pattern_max = [10, 1, 6, 4, 11, 
    8, 4, 3, 3, 2, 
    8, 8, 10, 8, 5, 3, 
    10, 6, 6, 6, 12, 7, 12]
    @pattern_loop = [10, 1, 1, 1, 3, 
    8, 4, 1, 3, 2, 
    1, 1, 1, 1, 1, 2, 
    1, 2, 2, 3, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup2
    @character_name = "Marisa/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "c3", "c4", "c5", "c6", 
    "s1", "s2", "s3", "s4", "s5", "s6", "s7"]
    @pattern_speed = [5, 5, 5, 5, 4, 
    5, 5, 4, 5, 8, 
    2.5, 2.5, 2.5, 4, 4, 3, 
    3.5, 4, 4, 5, 3.5, 4, 3]
    @pattern_max = [10, 1, 6, 4, 7, 
    8, 5, 4, 2, 3, 
    10, 8, 12, 7, 10, 12, 
    9, 12, 11, 11, 11, 11, 12]
    @pattern_loop = [10, 1, 1, 1, 2, 
    8, 4, 1, 2, 2, 
    1, 1, 1, 1, 1, 1, 
    1, 2, 1, 2, 1, 1, 12]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup3
    @character_name = "Sakuya/"
    @width = 30
    @height = 104
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 62
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "c3", "c4", "c5", "c6", 
    "s1_s3", "s2", "s1_s3", "s4", "s5", "s6", "s7"]
    @pattern_speed = [5, 5, 5, 5, 3, 
    5, 5, 5, 5, 5, 
    2.5, 3, 3, 3, 4, 4, 
    3, 4, 3, 5, 5, 7, 4]
    @pattern_max = [6, 1, 6, 4, 7, 
    9, 4, 3, 2, 5, 
    8, 6, 11, 11, 7, 7, 
    11, 7, 11, 18, 7, 15, 12]
    @pattern_loop = [6, 1, 1, 1, 2, 
    9, 2, 1, 2, 2, 
    1, 1, 1, 1, 1, 2, 
    1, 1, 1, 9, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup4
    @character_name = "Sanae/"
    @width = 30
    @height = 92
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 54
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "p1", "p2", "c1", "s1", "s4", "s3", "s2"]
    @pattern_speed = [5, 5, 5, 6, 7, 
    5, 5, 4, 5, 8, 
    2.5, 3.5, 2.5, 4, 3, 4, 4]
    @pattern_max = [8, 1, 7, 3, 7, 
    8, 5, 5, 3, 4, 
    9, 7, 9, 8, 10, 11, 10]
    @pattern_loop = [8, 1, 1, 1, 2, 
    8, 2, 1, 2, 2, 
    1, 1, 1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup5
    @character_name = "Cirno/"
    @width = 30
    @height = 80
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 40
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "p1", "c1", "p2", "p3", "c1", "s1", "s2", "s3", "spell"]
    @pattern_speed = [5, 5, 5, 5, 6, 
    5, 5, 5, 5, 10, 
    3, 3, 3, 3, 4, 3.5, 3, 4, 6]
    @pattern_max = [6, 1, 9, 4, 4, 
    8, 4, 4, 3, 2, 
    6, 8, 9, 10, 8, 13, 11, 8, 4]
    @pattern_loop = [6, 1, 1, 1, 2, 
    8, 4, 1, 2, 2, 
    1, 1, 1, 1, 1, 1, 8, 1, 2]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup6
    @character_name = "Reisen/"
    @width = 30
    @height = 88
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 48
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "p1", "p2", "s2_s3", "p3", "c1", "s1", "p4", "s4", "s1"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    5, 5, 6, 5, 10, 
    3, 3.5, 3.5, 4, 3.5, 3.5, 6, 5, 5]
    @pattern_max = [9, 1, 9, 4, 9, 
    8, 8, 3, 4, 2, 
    7, 6, 8, 8, 11, 8, 7, 9, 8]
    @pattern_loop = [9, 1, 1, 1, 4, 
    8, 8, 1, 3, 1, 
    1, 1, 1, 1, 1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup7
    @character_name = "Remilia/"
    @width = 30
    @height = 86
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 50
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "p1", "c1", "p2", "p3", "s2", "p4", "p5", "s3", "s4"]
    @pattern_speed = [5, 5, 6, 5, 5, 
    5, 6, 4, 5, 8, 
    3, 3, 3, 4, 4, 4, 3.5, 3, 5]
    @pattern_max = [8, 1, 5, 4, 7, 
    8, 3, 6, 2, 3, 
    6, 6, 7, 9, 11, 9, 9, 15, 16]
    @pattern_loop = [8, 1, 1, 1, 3, 
    8, 2, 1, 2, 1, 
    1, 1, 1, 1, 1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup8
    @character_name = "Aya/"
    @width = 30
    @height = 102
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 60
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "p1", "s3", "s2", "s1", "s3", "p2", "s4"]
    @pattern_speed = [6, 5, 5, 6, 6, 
    6, 6, 8, 6, 8, 
    3, 3, 3, 3, 4, 5, 4, 5, 3]
    @pattern_max = [8, 1, 9, 3, 5, 
    8, 4, 2, 3, 3, 
    7, 9, 8, 13, 13, 8, 13, 5, 9]
    @pattern_loop = [8, 1, 1, 1, 3, 
    8, 2, 1, 2, 1, 
    1, 1, 1, 1, 1, 1, 1, 1, 3]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup9
    @character_name = "Utsuho/"
    @width = 30
    @height = 112
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 70
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "p1", "p2", "p3", "c1", "s1", "s2", "s2", "s4", "s3a", "s3b"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    5, 5, 6, 5, 5, 
    3.5, 3, 3.5, 3.5, 5, 4, 5, 4, 5, 5]
    @pattern_max = [18, 1, 8, 4, 10, 
    8, 4, 3, 4, 4, 
    6, 8, 8, 10, 7, 11, 11, 11, 4, 7]
    @pattern_loop = [18, 1, 1, 1, 2, 
    8, 3, 1, 2, 4, 
    1, 1, 1, 1, 1, 1, 1, 1, 2, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup10
    @character_name = "Youmu/"
    @width = 30
    @height = 80
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 40
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "walk", "jump", "land", "guard", 
    "p1", "c1", "c2", "p2", "p3", "s2", "s1", "c1", "c2", "p4", "p2", "s5"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    6, 4, 9, 5, 10, 
    2, 2, 2, 2.5, 4, 3, 4, 0.75, 0.75, 0.75, 0.75, 5]
    @pattern_max = [8, 1, 9, 4, 8, 
    8, 8, 2, 3, 3, 
    9, 11, 13, 12, 9, 10, 11, 11, 13, 10, 12, 11]
    @pattern_loop = [8, 1, 1, 1, 2, 
    8, 8, 1, 2, 2, 
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup11
    @character_name = "Suika/"
    @width = 30
    @height = 88
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 48
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "walk", "jump", "land", "guard", 
    "p1", "c1", "p2", "s3", "s2", "c2", "s1a", "s1b", "s4"]
    @pattern_speed = [5, 5, 5, 5, 6, 
    6, 4, 5, 5, 10, 
    2.5, 2.5, 2.5, 2.5, 6, 3, 5, 5, 4]
    @pattern_max = [18, 1, 9, 4, 6, 
    8, 8, 3, 3, 3, 
    8, 11, 11, 12, 7, 12, 3, 5, 15]
    @pattern_loop = [18, 1, 1, 1, 2, 
    8, 8, 1, 2, 2, 
    1, 1, 1, 1, 1, 1, 2, 2, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup12
    @character_name = "Yukari/"
    @width = 30
    @height = 104
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 62
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "p1", "c1", "c2", "s1", "s4", "s2", "s3a", "s3b", "s5"]
    @pattern_speed = [5, 5, 7, 5, 5, 
    5, 8, 7, 5, 7, 
    2, 4, 2.5, 4, 4, 4, 4, 4, 4]
    @pattern_max = [10, 1, 7, 4, 5, 
    8, 4, 3, 2, 3, 
    9, 6, 10, 8, 6, 10, 7, 4, 11]
    @pattern_loop = [10, 1, 1, 1, 4, 
    8, 2, 1, 2, 2, 
    1, 1, 1, 1, 2, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup1001
    @character_name = "Forest_Youkai/Normal/"
    @width = 44
    @height = 56
    @hitbox_aoe = 16
    @hitbox_x_size = 0
    @hitbox_y_size = 16
    @pattern_name = ["stand", "stand", "hit", "hit", "attack2", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack1", "attack2"]
    @pattern_speed = [5, 5, 5, 5, 3, 
    5, 3, 5, 5, 5, 
    3, 3]
    @pattern_max = [4, 4, 2, 2, 4, 
    6, 6, 6, 6, 4, 
    4, 4]
    @pattern_loop = [4, 4, 1, 1, 4, 
    6, 6, 6, 6, 4, 
    4, 4]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1002
    @character_name = "Fairy/Blue/"
    @width = 30
    @height = 64
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack", "attack", "fly"]
    @pattern_speed = [8, 8, 8, 8, 8, 
    5, 5, 5, 5, 8, 
    8, 8, 5]
    @pattern_max = [6, 6, 3, 2, 6, 
    6, 6, 6, 6, 6, 
    5, 5, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    3, 3, 6]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1003
    @character_name = "Poisonous_Flower/Purple/"
    @width = 30
    @height = 40
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 12
    @pattern_name = ["stand", "appear", "death", "hit", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "attack1", "attack2"]
    @pattern_speed = [6, 10, 8, 10, 6, 
    6, 6, 6, 6, 6, 
    6, 6]
    @pattern_max = [8, 5, 3, 1, 6, 
    8, 8, 8, 8, 8, 
    6, 9]
    @pattern_loop = [8, 1, 1, 1, 8, 
    8, 8, 8, 8, 8, 
    3, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1004
    @character_name = "Yin_Yang/Blue/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1005
    @character_name = "Cirno/"
    @width = 30
    @height = 80
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 40
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "c1", "s2", "s3", "c1"]
    @pattern_speed = [5, 5, 5, 5, 6, 
    5, 5, 5, 5, 10, 
    6, 7, 6, 3, 5, 4]
    @pattern_max = [6, 1, 9, 4, 4, 
    8, 4, 4, 3, 2, 
    8, 13, 8, 11, 8, 8]
    @pattern_loop = [6, 1, 1, 1, 2, 
    8, 4, 1, 2, 2, 
    1, 1, 8, 8, 1, 8]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 10
    @death_time = 60
  end

  def setup1006
    @character_name = "Haunted_Tree/Normal/"
    @width = 70
    @height = 120
    @hitbox_aoe = 28
    @hitbox_x_size = 0
    @hitbox_y_size = 48
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "walk", "walk", "stand", 
    "stand", "attack", "stand"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    5, 5, 5, 5, 5, 
    3, 5, 3]
    @pattern_max = [6, 6, 10, 1, 6, 
    6, 6, 6, 6, 6, 
    6, 16, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    6, 1, 6]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 1.5
    @slide_move_speed = 0
    @appearance_count = 40
    @death_time = 60
  end

  def setup1007
    @character_name = "Doll/Gray/"
    @width = 24
    @height = 46
    @hitbox_aoe = 8
    @hitbox_x_size = 0
    @hitbox_y_size = 20
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "walk", "walk", "fly", "fly", "fly", 
    "attack1", "attack2", "attack3", "attack4"]
    @pattern_speed = [6, 6, 8, 5, 6, 
    6, 4, 6, 6, 6, 
    8, 6, 6, 6]
    @pattern_max = [4, 4, 2, 1, 4, 
    2, 2, 4, 4, 4, 
    4, 6, 4, 6]
    @pattern_loop = [4, 4, 1, 1, 4, 
    2, 2, 4, 4, 4, 
    1, 2, 4, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 1.5
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 30
  end

  def setup1008
    @character_name = "Doll/Red/"
    @width = 24
    @height = 46
    @hitbox_aoe = 8
    @hitbox_x_size = 0
    @hitbox_y_size = 20
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "walk", "walk", "fly", "fly", "fly", 
    "attack1", "attack2", "attack3", "attack4"]
    @pattern_speed = [6, 6, 8, 5, 6, 
    6, 4, 6, 6, 6, 
    8, 6, 6, 6]
    @pattern_max = [4, 4, 2, 1, 4, 
    2, 2, 4, 4, 4, 
    4, 6, 4, 6]
    @pattern_loop = [4, 4, 1, 1, 4, 
    2, 2, 4, 4, 4, 
    1, 2, 4, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 30
  end

  def setup1009
    @character_name = "Alice/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2_s3_s4"]
    @pattern_speed = [3, 5, 5, 6.5, 4, 
    4, 5, 3, 5, 5, 
    5, 5, 4]
    @pattern_max = [16, 1, 11, 3, 8, 
    10, 4, 7, 2, 2, 
    10, 16, 11]
    @pattern_loop = [16, 1, 1, 1, 3, 
    10, 2, 1, 2, 1, 
    1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 10
    @death_time = 60
  end

  def setup1010
    setup2
  end

  def setup1011
    setup3
  end

  def setup1012
    @character_name = "Three-Tails_Fox/Normal/"
    @width = 48
    @height = 62
    @hitbox_aoe = 24
    @hitbox_x_size = 0
    @hitbox_y_size = 12
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "jump", "jump", "stand", 
    "attack1", "attack2"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    5, 3, 5, 5, 5, 
    8, 8]
    @pattern_max = [6, 6, 6, 1, 6, 
    8, 8, 1, 1, 6, 
    8, 8]
    @pattern_loop = [6, 6, 1, 1, 6, 
    8, 8, 1, 1, 6, 
    8, 8]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 2.5
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1013
    @character_name = "Sunflower_Fairy/Yellow/"
    @width = 30
    @height = 64
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "attack1", 
    "fly", "fly", "fly", "fly", "guard", 
    "attack1", "attack2"]
    @pattern_speed = [8, 8, 8, 8, 8, 
    8, 8, 8, 8, 8, 
    8, 5]
    @pattern_max = [3, 3, 3, 1, 5, 
    3, 3, 3, 3, 2, 
    5, 3]
    @pattern_loop = [3, 3, 1, 1, 3, 
    3, 3, 3, 3, 1, 
    3, 3]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1014
    @character_name = "Yin_Yang/White/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1015
    @character_name = "Yin_Yang/Green/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1016
    @character_name = "Bonefish/Normal/"
    @width = 54
    @height = 54
    @hitbox_aoe = 24
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["swim", "swim", "death", "hit", "swim", 
    "swim", "swim", "swim", "swim", "swim", 
    "attack1", "attack2"]
    @pattern_speed = [8, 8, 5, 5, 8, 
    8, 8, 8, 8, 8, 
    8, 8]
    @pattern_max = [6, 6, 9, 1, 6, 
    6, 6, 6, 6, 6, 
    12, 10]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    6, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 3
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 45
  end

  def setup1017
    @character_name = "Little_Fairy/Green/"
    @width = 20
    @height = 48
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack1", "attack2", "attack3"]
    @pattern_speed = [8, 8, 6, 5, 8, 
    6, 4, 6, 6, 8, 
    8, 8, 5]
    @pattern_max = [4, 4, 6, 1, 4, 
    4, 4, 4, 4, 4, 
    4, 4, 4]
    @pattern_loop = [4, 4, 1, 1, 4, 
    4, 4, 4, 4, 4, 
    4, 4, 4]
    @gravity_type = 1
    @jump_power = 3
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1018
    @character_name = "Reisen/"
    @width = 30
    @height = 88
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 48
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2_s3", "s2_s3", "s4"]
    @pattern_speed = [5, 5, 6, 5, 5, 
    5, 5, 6, 5, 10, 
    5, 5, 3, 4, 5]
    @pattern_max = [9, 1, 9, 4, 9, 
    8, 8, 3, 4, 2, 
    11, 8, 8, 8, 9]
    @pattern_loop = [9, 1, 1, 1, 4, 
    8, 8, 1, 3, 1, 
    1, 1, 6, 6, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 10
    @death_time = 60
  end

  def setup1019
    @character_name = "Giant_Squid/Normal/"
    @width = 72
    @height = 72
    @hitbox_aoe = 30
    @hitbox_x_size = 8
    @hitbox_y_size = 0
    @pattern_name = ["stand", "appear", "death", "hit", "stand", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack1a", "attack1b", "attack2"]
    @pattern_speed = [10, 20, 6, 5, 10, 
    6, 6, 6, 6, 10, 
    8, 8, 8]
    @pattern_max = [4, 2, 6, 1, 4, 
    7, 7, 7, 7, 4, 
    8, 4, 7]
    @pattern_loop = [4, 1, 1, 1, 4, 
    7, 7, 7, 7, 4, 
    1, 1, 2]
    @gravity_type = 0
    @jump_power = 4
    @base_walk_move_speed = 2
    @slide_move_speed = 0
    @appearance_count = 40
    @death_time = 60
  end

  def setup1020
    @character_name = "Wyvern/Blue/"
    @width = 64
    @height = 92
    @hitbox_aoe = 38
    @hitbox_y_size = 8
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack1", "attack2"]
    @pattern_speed = [8, 8, 10, 5, 8, 
    6, 6, 6, 6, 8, 
    6, 6]
    @pattern_max = [6, 6, 3, 1, 6, 
    6, 6, 6, 6, 6, 
    10, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 1.5
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 50
  end
  
  def setup1021
    setup1005
  end

  def setup1022
    @character_name = "Lizard_Youkai/Black/"
    @width = 80
    @height = 130
    @hitbox_aoe = 34
    @hitbox_x_size = 0
    @hitbox_y_size = 42
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack1a", "attack1b", "attack2", "attack3"]
    @pattern_speed = [6, 6, 6, 5, 6, 
    6, 6, 6, 6, 6, 
    8, 8, 8, 6]
    @pattern_max = [6, 6, 5, 1, 6, 
    4, 4, 4, 4, 6, 
    6, 3, 6, 7]
    @pattern_loop = [6, 6, 1, 1, 6, 
    4, 4, 4, 4, 6, 
    1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 2
    @slide_move_speed = 0
    @appearance_count = 40
    @death_time = 40
  end

  def setup1023
    @character_name = "Aya/"
    @width = 30
    @height = 102
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 60
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2", "s3", "s4", "s3"]
    @pattern_speed = [6, 5, 6, 6, 6, 
    6, 6, 8, 6, 8, 
    6, 5, 7, 5, 6, 3, 3]
    @pattern_max = [8, 1, 9, 3, 5, 
    8, 4, 2, 3, 3, 
    7, 9, 8, 13, 13, 9, 13]
    @pattern_loop = [8, 1, 1, 1, 3, 
    8, 2, 1, 2, 1, 
    1, 1, 1, 1, 1, 3, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3.5
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end

  def setup1024
    @character_name = "Meiling/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2", "s3", "s4"]
    @pattern_speed = [6, 5, 5, 6, 6, 
    6, 6, 3, 5, 8, 
    5, 4, 6, 5, 6, 4]
    @pattern_max = [6, 1, 11, 3, 5, 
    6, 4, 7, 2, 2, 
    4, 6, 9, 8, 14, 10]
    @pattern_loop = [6, 1, 1, 1, 2, 
    6, 2, 1, 2, 1, 
    1, 1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 12
    @appearance_count = 10
    @death_time = 60
  end

  def setup1025
    setup1024
  end

  def setup1026
    @character_name = "Fire_Beast/Normal/"
    @width = 104
    @height = 112
    @hitbox_aoe = 48
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "jump", "jump", "stand", 
    "attack1", "attack2"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 6, 6, 6, 6, 
    6, 6]
    @pattern_max = [6, 6, 10, 1, 6, 
    6, 6, 1, 1, 6, 
    12, 15]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 1, 1, 6, 
    6, 1]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 2
    @slide_move_speed = 0
    @appearance_count = 40
    @death_time = 50
  end

  def setup1027
    @character_name = "Gargoyle/Normal/"
    @width = 32
    @height = 72
    @hitbox_aoe = 14
    @hitbox_x_size = 0
    @hitbox_y_size = 36
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "attack1", "attack2"]
    @pattern_speed = [6, 6, 4, 5, 6, 
    6, 6, 6, 6, 6, 
    6, 6]
    @pattern_max = [6, 6, 9, 1, 6, 
    6, 6, 6, 6, 6, 
    7, 12]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1, 1]
    @through = true
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 1
    @death_time = 40
  end

  def setup1028
    @character_name = "Maid_Fairy/Red/"
    @width = 30
    @height = 66
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["stand", "stand", "hit", "hit", "stand", 
    "walk", "walk", "jump", "land", "guard", 
    "attack1", "attack2"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 4, 8, 5, 8, 
    6, 8]
    @pattern_max = [6, 6, 1, 1, 6, 
    6, 6, 2, 1, 2, 
    6, 4]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 1, 1, 1, 
    3, 2]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 40
  end

  def setup1029
    @character_name = "One_Eye_Bat/Purple/"
    @width = 22
    @height = 36
    @hitbox_aoe = 14
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "fly"]
    @pattern_speed = [8, 8, 6, 5, 8, 
    6, 4, 6, 6, 8, 
    4]
    @pattern_max = [3, 3, 5, 1, 3, 
    3, 3, 3, 3, 3, 
    3]
    @pattern_loop = [3, 3, 1, 1, 3, 
    3, 3, 3, 3, 3, 
    3]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 4
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1030
    @character_name = "Yin_Yang/Purple/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1031
    @character_name = "Flying_Book/Purple/"
    @width = 32
    @height = 32
    @hitbox_aoe = 10
    @hitbox_x_size = 2
    @hitbox_y_size = 0
    @pattern_name = ["stand", "appear", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [8, 4, 8, 8, 4, 8, 8, 8, 8, 8, 8]
    @pattern_max = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]
    @pattern_loop = [8, 1, 8, 8, 8, 8, 8, 8, 8, 8, 8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 30
    @death_time = 40
  end

  def setup1032
    @character_name = "Flying_Book/Orange/"
    @width = 32
    @height = 32
    @hitbox_aoe = 10
    @hitbox_x_size = 2
    @hitbox_y_size = 0
    @pattern_name = ["stand", "appear", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [8, 4, 8, 8, 4, 8, 8, 8, 8, 8, 8]
    @pattern_max = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]
    @pattern_loop = [8, 1, 8, 8, 8, 8, 8, 8, 8, 8, 8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 30
    @death_time = 40
  end

  def setup1033
    @character_name = "Ghost_Book/Normal/"
    @width = 50
    @height = 80
    @hitbox_aoe = 20
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 4, 6, 6, 6, 
    6]
    @pattern_max = [6, 6, 10, 1, 6, 
    6, 6, 6, 6, 6, 
    9]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 50
  end

  def setup1034
    @character_name = "Flying_Book/Red/"
    @width = 32
    @height = 32
    @hitbox_aoe = 10
    @hitbox_x_size = 2
    @hitbox_y_size = 0
    @pattern_name = ["stand", "appear", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [8, 4, 8, 8, 4, 8, 8, 8, 8, 8, 8]
    @pattern_max = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]
    @pattern_loop = [8, 1, 8, 8, 8, 8, 8, 8, 8, 8, 8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 30
    @death_time = 40
  end

  def setup1035
    @character_name = "Patchouli/"
    @width = 30
    @height = 100
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 60
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1_s2_s3a", "s1_s2_s3b"]
    @pattern_speed = [4, 5, 6, 6, 5, 
    5, 6, 4, 8, 8, 
    5, 5, 5]
    @pattern_max = [12, 1, 9, 3, 11, 
    10, 4, 5, 3, 2, 
    13, 11, 11]
    @pattern_loop = [12, 1, 1, 1, 3, 
    10, 2, 1, 2, 1, 
    1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 10
    @death_time = 60
  end

  def setup1036
    @character_name = "Snake/Normal/"
    @width = 64
    @height = 100
    @hitbox_aoe = 28
    @hitbox_x_size = 0
    @hitbox_y_size = 32
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "guard", 
    "attack1a", "attack1b", "attack2"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    6, 5, 6, 6, 6, 
    5, 5, 5]
    @pattern_max = [10, 10, 5, 1, 10, 
    6, 6, 10, 10, 10, 
    1, 8, 9]
    @pattern_loop = [10, 10, 1, 1, 10, 
    6, 6, 10, 10, 10, 
    1, 1, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1037
    @character_name = "Shadow_Sakuya/"
    @width = 30
    @height = 104
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 62
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2_s3", "s4", "s5"]
    @pattern_speed = [5, 5, 5, 5, 3, 
    5, 5, 5, 5, 5, 
    4, 4, 4, 3, 5, 4]
    @pattern_max = [6, 1, 6, 4, 7, 
    9, 4, 3, 2, 5, 
    6, 11, 11, 11, 7, 7]
    @pattern_loop = [6, 1, 1, 1, 2, 
    9, 2, 1, 2, 2, 
    1, 1, 1, 1, 2, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 50
  end

  def setup1038
    @character_name = "Remilia/"
    @width = 30
    @height = 86
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 50
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3", "s4"]
    @pattern_speed = [5, 5, 6, 5, 5, 
    5, 6, 4, 5, 8, 
    5, 5, 5, 4, 5]
    @pattern_max = [8, 1, 5, 4, 7, 
    8, 3, 6, 2, 3, 
    6, 8, 11, 15, 16]
    @pattern_loop = [8, 1, 1, 1, 3, 
    8, 2, 1, 2, 1, 
    1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end

  def setup1039
    setup1038
  end

  def setup1040
    @character_name = "Fairy/Green/"
    @width = 30
    @height = 64
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack", "attack", "attack"]
    @pattern_speed = [8, 8, 8, 8, 8, 
    5, 5, 5, 5, 8, 
    8, 8, 8]
    @pattern_max = [6, 6, 3, 2, 6, 
    6, 6, 6, 6, 6, 
    5, 5, 5]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    5, 3, 3]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1041
    @character_name = "Little_Fairy/Blue/"
    @width = 20
    @height = 48
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack1", "attack2", "attack3"]
    @pattern_speed = [8, 8, 6, 5, 8, 
    6, 4, 6, 6, 8, 
    8, 8, 5]
    @pattern_max = [4, 4, 6, 1, 4, 
    4, 4, 4, 4, 4, 
    4, 4, 4]
    @pattern_loop = [4, 4, 1, 1, 4, 
    4, 4, 4, 4, 4, 
    4, 4, 4]
    @gravity_type = 1
    @jump_power = 3
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1042
    @character_name = "Slime/Blue/"
    @width = 48
    @height = 44
    @hitbox_aoe = 16
    @hitbox_x_size = 0
    @hitbox_y_size = 8
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack", "attack", "attack"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    5, 5, 6, 6, 6, 
    8, 5, 8]
    @pattern_max = [3, 3, 5, 1, 3, 
    7, 7, 3, 3, 3, 
    6, 6, 6]
    @pattern_loop = [3, 3, 1, 1, 3, 
    7, 7, 3, 3, 3, 
    3, 3, 3]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 40
  end

  def setup1043
    @character_name = "Ice_Flower/Blue/"
    @width = 30
    @height = 40
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 12
    @pattern_name = ["stand", "appear", "death", "hit", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "attack1", "attack2"]
    @pattern_speed = [6, 10, 8, 10, 6, 
    6, 6, 6, 6, 6, 
    6, 7]
    @pattern_max = [8, 5, 3, 1, 6, 
    8, 8, 8, 8, 8, 
    6, 8]
    @pattern_loop = [8, 1, 1, 1, 8, 
    8, 8, 8, 8, 8, 
    3, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1044
    @character_name = "Yin_Yang/Yellow/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1045
    @character_name = "Yin_Yang/Orange/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1046
    setup1023
  end

  def setup1047
    @character_name = "Snow_Youkai/Normal/"
    @width = 40
    @height = 42
    @hitbox_aoe = 14
    @hitbox_x_size = 0
    @hitbox_y_size = 10
    @pattern_name = ["stand", "appear", "death", "hit", "attack", 
    "walk", "walk", "jump", "stand", "stand", 
    "stand", "attack"]
    @pattern_speed = [4, 8, 7, 5, 4, 
    4, 3, 8, 4, 4, 
    4, 4]
    @pattern_max = [8, 5, 8, 1, 12, 
    6, 6, 2, 8, 8, 
    8, 12]
    @pattern_loop = [8, 1, 1, 1, 8, 
    6, 6, 1, 8, 8, 
    8, 8]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 60
  end

  def setup1048
    @character_name = "Slime/Brown/"
    @width = 48
    @height = 44
    @hitbox_aoe = 16
    @hitbox_x_size = 0
    @hitbox_y_size = 8
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack", "attack", "attack"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    5, 5, 6, 6, 6, 
    8, 5, 8]
    @pattern_max = [3, 3, 5, 1, 3, 
    7, 7, 3, 3, 3, 
    6, 6, 6]
    @pattern_loop = [3, 3, 1, 1, 3, 
    7, 7, 3, 3, 3, 
    3, 3, 3]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 40
  end

  def setup1049
    @character_name = "Yeti/Normal/"
    @width = 78
    @height = 108
    @hitbox_aoe = 32
    @hitbox_x_size = 0
    @hitbox_y_size = 28
    @pattern_name = ["stand", "stand", "death", "hit", "attack1", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack1", "attack2", "attack2"]
    @pattern_speed = [10, 10, 7, 10, 7, 
    6, 5, 10, 10, 10, 
    6, 6, 4]
    @pattern_max = [5, 5, 7, 2, 6, 
    4, 4, 4, 4, 5, 
    6, 10, 10]
    @pattern_loop = [5, 5, 1, 1, 5, 
    4, 4, 4, 4, 5, 
    5, 8, 8]
    @gravity_type = 0
    @jump_power = 4
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 50
  end

  def setup1050
    @character_name = "Sanae/"
    @width = 30
    @height = 92
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 54
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3", "s4"]
    @pattern_speed = [5, 5, 7, 6, 7, 
    5, 5, 4, 5, 8, 
    5, 5, 6, 6, 5]
    @pattern_max = [8, 1, 7, 3, 7, 
    8, 5, 5, 3, 4, 
    9, 8, 10, 11, 10]
    @pattern_loop = [8, 1, 1, 1, 2, 
    8, 2, 1, 2, 2, 
    1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end

  def setup1051
    @character_name = "Pentagram/Red/"
    @blend_type = 1
    @width = 96
    @height = 96
    @hitbox_aoe = 40
    @pattern_name = ["stand", "stand", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-4, -4, -4, -4, -4, -4, -4, -4, -4, -4, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1052
    @character_name = "Pentagram/Purple/"
    @blend_type = 1
    @width = 96
    @height = 96
    @hitbox_aoe = 40
    @pattern_name = ["stand", "stand", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-4, -4, -4, -4, -4, -4, -4, -4, -4, -4, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1053
    @character_name = "Wyvern/Green/"
    @width = 64
    @height = 92
    @hitbox_aoe = 38
    @hitbox_y_size = 8
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack1", "attack2"]
    @pattern_speed = [8, 8, 10, 5, 8, 
    6, 6, 6, 6, 8, 
    6, 6]
    @pattern_max = [6, 6, 3, 1, 6, 
    6, 6, 6, 6, 6, 
    10, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 1.5
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 50
  end

  def setup1054
    @character_name = "Leviathan/Normal/"
    @width = 96
    @height = 216
    @hitbox_aoe = 44
    @hitbox_y_size = 112
    @pattern_name = ["stand", "stand", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack1", "attack2", "fly"]
    @pattern_speed = [6, 6, 8, 5, 6, 
    6, 4, 6, 6, 6, 
    6, 6, 6]
    @pattern_max = [8, 8, 7, 1, 6, 
    6, 6, 6, 6, 6, 
    14, 17, 6]
    @pattern_loop = [8, 8, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1, 1, 6]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 60
  end

  def setup1055
    @character_name = "Suwako/"
    @width = 30
    @height = 88
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 48
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2", "s3"]
    @pattern_speed = [5, 5, 5, 5, 6, 
    4, 5, 5, 5, 6, 
    6, 6, 5, 5, 5]
    @pattern_max = [8, 1, 10, 4, 7, 
    12, 4, 4, 4, 3, 
    6, 9, 10, 11, 10]
    @pattern_loop = [8, 1, 1, 1, 2, 
    12, 3, 1, 3, 1, 
    1, 1, 4, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end

  def setup1056
    @character_name = "Frog/Normal/"
    @width = 68
    @height = 48
    @hitbox_aoe = 22
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["stand", "stand", "hit", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "stand", "attack"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 5, 6, 6, 6, 
    6, 6]
    @pattern_max = [4, 4, 1, 1, 4, 
    6, 6, 4, 4, 4, 
    4, 4]
    @pattern_loop = [4, 4, 1, 1, 4, 
    6, 6, 4, 4, 4, 
    4, 4]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 30
  end

  def setup1057
    @character_name = "Sunflower_Fairy/Purple/"
    @width = 30
    @height = 64
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "attack1", 
    "fly", "fly", "fly", "fly", "guard", 
    "attack1", "attack2"]
    @pattern_speed = [8, 8, 8, 8, 8, 
    8, 8, 8, 8, 8, 
    8, 5]
    @pattern_max = [3, 3, 3, 1, 5, 
    3, 3, 3, 3, 2, 
    5, 3]
    @pattern_loop = [3, 3, 1, 1, 3, 
    3, 3, 3, 3, 1, 
    3, 3]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1058
    @character_name = "Beetle_Youkai/Normal/"
    @width = 60
    @height = 52
    @hitbox_aoe = 24
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "guard", 
    "attack1", "attack2", "attack3", "attack4"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 4, 6, 6, 6, 
    6, 6, 6, 5]
    @pattern_max = [4, 4, 7, 1, 4, 
    4, 4, 4, 4, 6, 
    5, 5, 3, 9]
    @pattern_loop = [4, 4, 1, 1, 3, 
    4, 4, 4, 4, 4, 
    1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 40
  end

  def setup1059
    @character_name = "One_Eye_Bat/Blue/"
    @width = 22
    @height = 36
    @hitbox_aoe = 14
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "fly"]
    @pattern_speed = [8, 8, 6, 5, 8, 
    6, 4, 6, 6, 8, 
    4]
    @pattern_max = [3, 3, 5, 1, 3, 
    3, 3, 3, 3, 3, 
    3]
    @pattern_loop = [3, 3, 1, 1, 3, 
    3, 3, 3, 3, 3, 
    3]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 4
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1060
    @character_name = "Slime/Red/"
    @width = 48
    @height = 44
    @hitbox_aoe = 16
    @hitbox_x_size = 0
    @hitbox_y_size = 8
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack", "attack", "attack"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    5, 5, 6, 6, 6, 
    8, 5, 8]
    @pattern_max = [3, 3, 5, 1, 3, 
    7, 7, 3, 3, 3, 
    6, 6, 6]
    @pattern_loop = [3, 3, 1, 1, 3, 
    7, 7, 3, 3, 3, 
    3, 3, 3]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 40
  end

  def setup1061
    @character_name = "Caterpillar/Normal/"
    @width = 88
    @height = 76
    @hitbox_aoe = 34
    @hitbox_x_size = 16
    @hitbox_y_size = 0
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "stand", "attack"]
    @pattern_speed = [6, 6, 6, 5, 6, 
    6, 4, 6, 6, 6, 
    6, 6]
    @pattern_max = [7, 7, 8, 1, 7, 
    9, 9, 7, 7, 7, 
    7, 12]
    @pattern_loop = [7, 7, 1, 1, 7, 
    9, 9, 7, 7, 7, 
    7, 1]
    @gravity_type = 0
    @jump_power = 4
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 50
  end

  def setup1062
    setup1016
  end

  def setup1063
    @character_name = "Round_Fish/Yellow/"
    @width = 56
    @height = 46
    @hitbox_aoe = 20
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["swim", "swim", "death", "hit", "swim", 
    "swim", "swim", "swim", "swim", "swim", 
    "attack"]
    @pattern_speed = [5, 5, 8, 5, 5, 
    5, 3, 5, 5, 5, 
    6]
    @pattern_max = [6, 6, 4, 1, 6, 
    6, 6, 6, 6, 6, 
    8]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    6]
    @gravity_type = 1
    @jump_power = 3
    @base_walk_move_speed = 5
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1064
    @character_name = "Yin_Yang/White/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1065
    @character_name = "Yin_Yang/Red/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1066
    @character_name = "Suika/"
    @width = 30
    @height = 88
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 48
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "walk", "jump", "land", "guard", 
    "c1", "c2", "s1a", "s1b", "s2", "s3", "s4"]
    @pattern_speed = [5, 5, 6, 5, 6, 
    6, 4, 5, 5, 10, 
    5, 5, 6, 8, 8, 5, 6]
    @pattern_max = [18, 1, 9, 4, 6, 
    8, 8, 3, 3, 3, 
    11, 12, 3, 5, 7, 12, 15]
    @pattern_loop = [18, 1, 1, 1, 2, 
    8, 8, 1, 2, 2, 
    1, 1, 2, 2, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end

  def setup1067
    @character_name = "Stone_Youkai/Normal/"
    @width = 72
    @height = 128
    @hitbox_aoe = 32
    @hitbox_x_size = 0
    @hitbox_y_size = 36
    @pattern_name = ["stand", "stand", "death", "hit", "spell", 
    "walk", "walk", "stand", "stand", "guard", 
    "spell", "attack"]
    @pattern_speed = [6, 6, 6, 5, 6, 
    6, 4, 6, 6, 8, 
    6, 6]
    @pattern_max = [8, 8, 9, 1, 8, 
    6, 6, 8, 8, 3, 
    8, 14]
    @pattern_loop = [8, 8, 1, 1, 8, 
    6, 6, 8, 8, 1, 
    8, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 60
  end

  def setup1068
    @character_name = ""
    @width = 1
    @height = 1
    @through = true
    @pattern_name = ["", "", "", "", "", "", "", "", "", ""]
    @pattern_speed = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 0
    @death_time = 0
  end

  def setup1069
    setup1068
  end

  def setup1070
    @character_name = "Beetle_Youkai/Special/"
    @width = 60
    @height = 52
    @hitbox_aoe = 24
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "guard", 
    "attack1", "attack2", "attack3", "attack4"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 4, 6, 6, 6, 
    6, 6, 6, 5]
    @pattern_max = [4, 4, 7, 1, 4, 
    4, 4, 4, 4, 6, 
    5, 5, 3, 9]
    @pattern_loop = [4, 4, 1, 1, 3, 
    4, 4, 4, 4, 4, 
    1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 40
  end

  def setup1071
    @character_name = "Great_Bull/Normal/"
    @width = 128
    @height = 192
    @hitbox_aoe = 64
    @hitbox_x_size = 0
    @hitbox_y_size = 28
    @pattern_name = ["stand", "stand", "death", "hit", "spell", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack1", "attack2", "attack3"]
    @pattern_speed = [6, 6, 6, 5, 6, 
    6, 4, 6, 6, 8, 
    6, 6, 6]
    @pattern_max = [16, 16, 8, 1, 16, 
    8, 8, 16, 16, 16, 
    16, 16, 16]
    @pattern_loop = [16, 16, 1, 1, 16, 
    8, 8, 16, 16, 16, 
    1, 1, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 60
  end

  def setup1072
    @character_name = "Shadow_Marisa/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2_s5", "s3", "s4", "s2_s5"]
    @pattern_speed = [5, 5, 5, 5, 4, 
    5, 5, 4, 5, 8, 
    4, 7, 5, 5, 4, 5, 5]
    @pattern_max = [10, 1, 6, 4, 7, 
    8, 5, 4, 2, 3, 
    10, 7, 12, 9, 12, 11, 9]
    @pattern_loop = [10, 1, 1, 1, 2, 
    8, 4, 1, 2, 2, 
    1, 1, 1, 1, 2, 2, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1073
    @character_name = "Flaming_Dragon/Normal/"
    @width = 112
    @height = 230
    @hitbox_aoe = 56
    @hitbox_y_size = 104
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "fly", "fly", "stand", "stand", "stand", 
    "attack1", "attack2", "attack3"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    6, 4, 6, 6, 6, 
    6, 6, 6]
    @pattern_max = [8, 8, 8, 1, 8, 
    6, 6, 8, 8, 8, 
    18, 21, 12]
    @pattern_loop = [8, 8, 1, 1, 8, 
    6, 6, 8, 8, 8, 
    1, 1, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 60
  end

  def setup1074
    @character_name = "Utsuho/"
    @width = 30
    @height = 112
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 70
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3a", "s3b", "s4"]
    @pattern_speed = [5, 5, 6, 5, 5, 
    5, 5, 6, 5, 5, 
    5, 8, 6, 6, 6, 6]
    @pattern_max = [18, 1, 8, 4, 10, 
    8, 4, 3, 4, 4, 
    10, 7, 11, 4, 7, 11]
    @pattern_loop = [18, 1, 1, 1, 2, 
    8, 3, 1, 2, 4, 
    1, 1, 1, 2, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end

  def setup1075
    @character_name = "Ghost_Fairy/Normal/"
    @width = 30
    @height = 64
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @blend_type = 1
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack", "attack", "fly"]
    @pattern_speed = [8, 8, 8, 8, 8, 
    5, 5, 5, 5, 8, 
    8, 8, 5]
    @pattern_max = [6, 6, 3, 2, 6, 
    6, 6, 6, 6, 6, 
    5, 5, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    3, 3, 6]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1076
    @character_name = "Little_Fairy/Red/"
    @width = 20
    @height = 48
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack1", "attack2", "attack3"]
    @pattern_speed = [8, 8, 6, 5, 8, 
    6, 4, 6, 6, 8, 
    8, 8, 5]
    @pattern_max = [4, 4, 6, 1, 4, 
    4, 4, 4, 4, 4, 
    4, 4, 4]
    @pattern_loop = [4, 4, 1, 1, 4, 
    4, 4, 4, 4, 4, 
    4, 4, 4]
    @gravity_type = 1
    @jump_power = 3
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1077
    @character_name = "Hollow/Normal/"
    @width = 30
    @height = 52
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 14
    @blend_type = 1
    @pattern_name = ["fly", "fly", "death", "hit", "attack", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack", "fly"]
    @pattern_speed = [6, 6, 6, 5, 6, 
    6, 6, 6, 6, 6, 
    6, 6]
    @pattern_max = [18, 18, 6, 1, 22, 
    18, 18, 18, 18, 18, 
    22, 18]
    @pattern_loop = [18, 18, 1, 1, 18, 
    18, 18, 18, 18, 18, 
    18, 18]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1078
    @character_name = "Yin_Yang/Rainbow/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1079
    @character_name = "Shinigami/Normal/"
    @width = 36
    @height = 90
    @hitbox_aoe = 14
    @hitbox_x_size = 0
    @hitbox_y_size = 50
    @pattern_name = ["stand", "appear", "death", "hit", "stand", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack", "fly"]
    @pattern_speed = [6, 5, 7, 5, 6, 
    6, 4, 6, 6, 6, 
    5, 6]
    @pattern_max = [6, 8, 6, 1, 6, 
    6, 6, 6, 6, 6, 
    12, 6]
    @pattern_loop = [6, 1, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1, 6]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 50
  end

  def setup1080
    @character_name = "Shinigami_Orb/Red/"
    @width = 36
    @height = 48
    @hitbox_aoe = 20
    @blend_type = 1
    @pattern_name = ["stand", "stand", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
    @pattern_max = [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
    @pattern_loop = [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 30
    @death_time = 30
  end

  def setup1081
    @character_name = "Shinigami/Ethereal/"
    @width = 36
    @height = 90
    @hitbox_aoe = 14
    @hitbox_x_size = 0
    @hitbox_y_size = 50
    @blend_type = 1
    @pattern_name = ["stand", "appear", "death", "hit", "stand", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack", "fly"]
    @pattern_speed = [6, 5, 7, 5, 6, 
    6, 4, 6, 6, 6, 
    5, 6]
    @pattern_max = [6, 8, 6, 1, 6, 
    6, 6, 6, 6, 6, 
    12, 6]
    @pattern_loop = [6, 1, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1, 6]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 50
  end

  def setup1082
    @character_name = "Skeleton/Normal/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "appear", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack1", "attack2", "stand"]
    @pattern_speed = [6, 7, 7, 5, 6, 
    6, 4, 6, 6, 6, 
    6, 5, 6]
    @pattern_max = [4, 5, 5, 1, 4, 
    4, 4, 4, 4, 6, 
    6, 4, 4]
    @pattern_loop = [4, 1, 1, 1, 4, 
    4, 4, 4, 4, 4, 
    1, 1, 4]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 35
    @death_time = 40
  end

  def setup1083
    @character_name = "Werewolf/Normal/"
    @width = 72
    @height = 164
    @hitbox_aoe = 22
    @hitbox_x_size = 0
    @hitbox_y_size = 104
    @pattern_name = ["stand", "stand", "death", "hit", "attack2", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack1", "attack2", "attack3", "attack1"]
    @pattern_speed = [12, 12, 5, 5, 7, 
    10, 7, 12, 12, 12, 
    6, 7, 7, 4]
    @pattern_max = [4, 4, 8, 1, 7, 
    4, 4, 4, 4, 4, 
    11, 7, 7, 11]
    @pattern_loop = [4, 4, 1, 1, 2, 
    4, 4, 4, 4, 4, 
    8, 2, 2, 8]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 50
  end

  def setup1084
    @character_name = "Werewolf/Ethereal/"
    @width = 72
    @height = 164
    @hitbox_aoe = 22
    @hitbox_x_size = 0
    @hitbox_y_size = 104
    @blend_type = 1
    @pattern_name = ["stand", "stand", "death", "hit", "attack2", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack1", "attack2", "attack3", "attack1"]
    @pattern_speed = [12, 12, 5, 5, 7, 
    10, 7, 12, 12, 12, 
    6, 7, 7, 4]
    @pattern_max = [4, 4, 8, 1, 7, 
    4, 4, 4, 4, 4, 
    11, 7, 7, 11]
    @pattern_loop = [4, 4, 1, 1, 2, 
    4, 4, 4, 4, 4, 
    8, 2, 2, 8]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 50
  end

  def setup1085
    @character_name = "Death_Mage/Normal/"
    @width = 48
    @height = 116
    @hitbox_aoe = 18
    @hitbox_x_size = 0
    @hitbox_y_size = 66
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "fly", "fly", "fly", "fly", "stand", 
    "attack1", "attack2", "attack3"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 4, 6, 6, 6, 
    5, 5, 5]
    @pattern_max = [6, 6, 10, 1, 6, 
    6, 6, 6, 6, 6, 
    12, 18, 18]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1, 1, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 55
  end

  def setup1086
    @character_name = "Poisonous_Tree/Normal/"
    @width = 48
    @height = 112
    @hitbox_aoe = 18
    @hitbox_x_size = 0
    @hitbox_y_size = 64
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "guard", 
    "attack1", "attack2"]
    @pattern_speed = [6, 6, 8, 5, 6, 
    6, 4, 6, 6, 6, 
    6, 6]
    @pattern_max = [12, 12, 5, 1, 12, 
    6, 6, 12, 12, 8, 
    12, 11]
    @pattern_loop = [12, 12, 1, 1, 12, 
    6, 6, 12, 12, 8, 
    12, 1]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 50
  end

  def setup1087
    @character_name = "Poisonous_Tree/Ethereal/"
    @width = 48
    @height = 112
    @hitbox_aoe = 18
    @hitbox_x_size = 0
    @hitbox_y_size = 64
    @blend_type = 1
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "guard", 
    "attack1", "attack2"]
    @pattern_speed = [6, 6, 8, 5, 6, 
    6, 4, 6, 6, 6, 
    6, 6]
    @pattern_max = [12, 12, 5, 1, 12, 
    6, 6, 12, 12, 8, 
    11, 12]
    @pattern_loop = [12, 12, 1, 1, 12, 
    6, 6, 12, 12, 8, 
    1, 12]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 50
  end

  def setup1088
    @character_name = "Shadow_Reimu/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2", "s3", "s4", "s5"]
    @pattern_speed = [5, 5, 5, 5, 3, 
    5, 5, 5, 5, 10, 
    4, 4, 7, 7, 5, 4, 7]
    @pattern_max = [10, 1, 6, 4, 11, 
    8, 4, 3, 3, 2, 
    8, 10, 6, 6, 12, 12, 7]
    @pattern_loop = [10, 1, 1, 1, 3, 
    8, 4, 1, 3, 2, 
    1, 1, 3, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1089
    @character_name = "Youmu/"
    @width = 30
    @height = 80
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 40
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "walk", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2", "s3", "s4", "s5"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    6, 4, 9, 5, 10, 
    4, 4, 5, 5, 6, 5, 5]
    @pattern_max = [8, 1, 9, 4, 8, 
    8, 8, 2, 3, 3, 
    11, 13, 11, 10, 9, 11, 11]
    @pattern_loop = [8, 1, 1, 1, 2, 
    8, 8, 1, 2, 2, 
    1, 1, 1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3.5
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end
  
  def setup1090
    setup1089
  end
  
  def setup1091
    @character_name = ""
    @width = 1
    @height = 1
    @through = true
    @pattern_name = ["", "", "", "", "", "", "", "", "", ""]
    @pattern_speed = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 0
    @death_time = 0
  end

  def setup1092
    @character_name = "Yuyuko/"
    @width = 30
    @height = 104
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 62
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2a", "s2b", "s3", "s4_s5", "s4_s5"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    5, 5, 3, 5, 10, 
    4, 5, 5, 7, 6, 6, 6]
    @pattern_max = [10, 1, 10, 4, 7, 
    6, 3, 8, 2, 2, 
    9, 11, 8, 4, 9, 8, 8]
    @pattern_loop = [10, 1, 1, 1, 2, 
    6, 2, 1, 2, 2, 
    1, 1, 4, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end
  
  def setup1093
    setup1092
    @gravity_type = 2
  end
  
  def setup1094
    setup1
  end
  
  def setup1095
    setup4
  end

  def setup1096
    @character_name = "Yukari/"
    @width = 30
    @height = 104
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 62
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s1", "s2", "s3a", "s3b", "s4", "s5"]
    @pattern_speed = [5, 5, 7, 5, 5, 
    5, 8, 7, 5, 7, 
    6, 5, 6, 4, 5, 6, 6, 6, 5]
    @pattern_max = [10, 1, 7, 4, 5, 
    8, 4, 3, 2, 3, 
    6, 10, 8, 8, 10, 7, 4, 6, 11]
    @pattern_loop = [10, 1, 1, 1, 4, 
    8, 2, 1, 2, 2, 
    1, 1, 1, 1, 1, 1, 1, 2, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end
  
  def setup1097
    setup1002
  end
  
  def setup1098
    setup1013
  end
  
  def setup1099
    setup1040
  end
  
  def setup1100
    setup1057
  end
  
  def setup1101
    setup1022
  end
  
  def setup1102
    setup1026
  end

  def setup1103
    @character_name = "Fairy/Shadow/"
    @width = 30
    @height = 64
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack", "attack", "fly"]
    @pattern_speed = [8, 8, 8, 8, 8, 
    5, 5, 5, 5, 8, 
    8, 8, 5]
    @pattern_max = [6, 6, 3, 2, 6, 
    6, 6, 6, 6, 6, 
    5, 5, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    3, 3, 6]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1104
    @character_name = "Doll/Shadow/"
    @width = 24
    @height = 46
    @hitbox_aoe = 8
    @hitbox_x_size = 0
    @hitbox_y_size = 20
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "walk", "walk", "fly", "fly", "fly", 
    "attack1", "attack2", "attack3", "attack4"]
    @pattern_speed = [6, 6, 8, 5, 6, 
    6, 4, 6, 6, 6, 
    8, 6, 6, 6]
    @pattern_max = [4, 4, 2, 1, 4, 
    2, 2, 4, 4, 4, 
    4, 6, 4, 6]
    @pattern_loop = [4, 4, 1, 1, 4, 
    2, 2, 4, 4, 4, 
    1, 2, 4, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 1.5
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 30
  end

  def setup1105
    @character_name = "Three-Tails_Fox/Shadow/"
    @width = 48
    @height = 62
    @hitbox_aoe = 24
    @hitbox_x_size = 0
    @hitbox_y_size = 12
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "jump", "jump", "stand", 
    "attack1", "attack2"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    5, 3, 5, 5, 5, 
    8, 8]
    @pattern_max = [6, 6, 6, 1, 6, 
    8, 8, 1, 1, 6, 
    8, 8]
    @pattern_loop = [6, 6, 1, 1, 6, 
    8, 8, 1, 1, 6, 
    8, 8]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 2.5
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 40
  end

  def setup1106
    @character_name = "Snow_Youkai/Shadow/"
    @width = 40
    @height = 42
    @hitbox_aoe = 14
    @hitbox_x_size = 0
    @hitbox_y_size = 10
    @pattern_name = ["stand", "appear", "death", "hit", "attack", 
    "walk", "walk", "jump", "stand", "stand", 
    "stand", "walk", "attack"]
    @pattern_speed = [4, 8, 7, 5, 4, 
    4, 3, 8, 4, 4, 
    4, 4, 4]
    @pattern_max = [8, 5, 8, 1, 12, 
    6, 6, 2, 8, 8, 
    8, 6, 12]
    @pattern_loop = [8, 1, 1, 1, 8, 
    6, 6, 1, 8, 8, 
    8, 6, 8]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 60
  end

  def setup1107
    @character_name = "Fire_Beast/Shadow/"
    @width = 104
    @height = 112
    @hitbox_aoe = 48
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "jump", "jump", "stand", 
    "attack1", "attack2"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 6, 6, 6, 6, 
    6, 6]
    @pattern_max = [6, 6, 10, 1, 6, 
    6, 6, 1, 1, 6, 
    12, 15]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 1, 1, 6, 
    6, 1]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 2
    @slide_move_speed = 0
    @appearance_count = 40
    @death_time = 50
  end

  def setup1108
    @character_name = "Wyvern/Shadow/"
    @width = 64
    @height = 92
    @hitbox_aoe = 38
    @hitbox_y_size = 8
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack1", "attack2"]
    @pattern_speed = [8, 8, 10, 5, 8, 
    6, 6, 6, 6, 8, 
    6, 6]
    @pattern_max = [6, 6, 3, 1, 6, 
    6, 6, 6, 6, 6, 
    10, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    1, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 1.5
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 50
  end

  def setup1109
    @character_name = "Shadow_Alice/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "stand", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2_s3_s4"]
    @pattern_speed = [3, 3, 5, 6.5, 4, 
    4, 5, 3, 5, 5, 
    5, 5, 4]
    @pattern_max = [16, 16, 11, 3, 8, 
    10, 4, 7, 2, 2, 
    10, 16, 11]
    @pattern_loop = [16, 16, 1, 1, 3, 
    10, 2, 1, 2, 1, 
    1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 55
  end

  def setup1110
    @character_name = "Shadow_Cirno/"
    @width = 30
    @height = 80
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 40
    @pattern_name = ["stand", "stand", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    5, 5, 5, 5, 10, 
    6, 7, 3, 5]
    @pattern_max = [6, 6, 9, 4, 4, 
    8, 4, 4, 3, 2, 
    8, 13, 11, 8]
    @pattern_loop = [6, 6, 1, 1, 3, 
    8, 4, 1, 2, 2, 
    1, 1, 8, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2
    @slide_move_speed = 10
    @appearance_count = 40
    @death_time = 45
  end

  def setup1111
    @character_name = "Shadow_Meiling/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "stand", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2", "s3"]
    @pattern_speed = [6, 6, 5, 6, 6, 
    6, 6, 3, 5, 8, 
    5, 4, 6, 5, 4]
    @pattern_max = [6, 6, 11, 3, 5, 
    6, 4, 7, 2, 2, 
    4, 6, 9, 8, 10]
    @pattern_loop = [6, 6, 1, 1, 2, 
    6, 2, 1, 2, 1, 
    1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 55
  end

  def setup1112
    @character_name = "Shadow_Aya/"
    @width = 30
    @height = 102
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 60
    @pattern_name = ["stand", "stand", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3"]
    @pattern_speed = [6, 6, 6, 6, 6, 
    6, 6, 8, 6, 8, 
    6, 7, 5, 6]
    @pattern_max = [8, 8, 9, 3, 5, 
    8, 4, 2, 3, 3, 
    7, 8, 13, 13]
    @pattern_loop = [8, 8, 1, 1, 3, 
    8, 2, 1, 2, 1, 
    1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3.5
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 54
  end

  def setup1113
    @character_name = "Shadow_Utsuho/"
    @width = 30
    @height = 112
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 70
    @pattern_name = ["stand", "stand", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3"]
    @pattern_speed = [5, 5, 6, 5, 5, 
    5, 5, 6, 5, 5, 
    5, 8, 6, 6]
    @pattern_max = [18, 18, 8, 4, 10, 
    8, 4, 3, 4, 4, 
    10, 7, 11, 11]
    @pattern_loop = [18, 18, 1, 1, 2, 
    8, 3, 1, 2, 4, 
    1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 48
  end

  def setup1114
    @character_name = "Shadow_Youmu/"
    @width = 30
    @height = 80
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 40
    @pattern_name = ["stand", "stand", "death", "hit", "spell", 
    "walk", "walk", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3"]
    @pattern_speed = [5, 5, 5, 5, 5, 
    6, 4, 9, 5, 10, 
    4, 5, 5, 6]
    @pattern_max = [8, 8, 9, 4, 8, 
    8, 8, 2, 3, 3, 
    11, 11, 10, 9]
    @pattern_loop = [8, 8, 1, 1, 2, 
    8, 8, 1, 2, 2, 
    1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3.5
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 45
  end

  def setup1115
    @character_name = "Maid_Fairy/Black/"
    @width = 30
    @height = 66
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["stand", "stand", "hit", "hit", "stand", 
    "walk", "walk", "jump", "land", "guard", 
    "attack1", "attack2"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 4, 8, 5, 8, 
    6, 8]
    @pattern_max = [6, 6, 1, 1, 6, 
    6, 6, 2, 1, 2, 
    6, 4]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 1, 1, 1, 
    3, 2]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 40
  end

  def setup1116
    @character_name = "Slime/Purple/"
    @width = 48
    @height = 44
    @hitbox_aoe = 16
    @hitbox_x_size = 0
    @hitbox_y_size = 8
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack", "attack", "attack"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    5, 5, 6, 6, 6, 
    8, 5, 8]
    @pattern_max = [3, 3, 5, 1, 3, 
    7, 7, 3, 3, 3, 
    6, 6, 6]
    @pattern_loop = [3, 3, 1, 1, 3, 
    7, 7, 3, 3, 3, 
    3, 3, 3]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 40
  end

  def setup1117
    @character_name = "Plush/Blue/"
    @width = 26
    @height = 88
    @hitbox_aoe = 10
    @hitbox_x_size = 0
    @hitbox_y_size = 52
    @pattern_name = ["stand", "stand", "death", "hit", "attack1", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack1", "attack2", "attack1"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    6, 4, 6, 6, 4, 
    6, 8, 6]
    @pattern_max = [8, 8, 5, 1, 10, 
    8, 8, 8, 8, 8, 
    10, 10, 10]
    @pattern_loop = [8, 8, 1, 1, 8, 
    8, 8, 8, 8, 8, 
    8, 1, 8]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 4
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1118
    @character_name = "Centaur/Normal/"
    @width = 44
    @height = 106
    @hitbox_aoe = 16
    @hitbox_x_size = 0
    @hitbox_y_size = 58
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "run", "jump", "stand", "stand", 
    "stand", "attack1", "attack2"]
    @pattern_speed = [6, 6, 8, 5, 6, 
    6, 6, 8, 6, 6, 
    6, 6, 6]
    @pattern_max = [3, 3, 5, 1, 3, 
    4, 4, 2, 3, 3, 
    3, 10, 12]
    @pattern_loop = [3, 3, 1, 1, 3, 
    4, 4, 1, 3, 3, 
    3, 1, 1]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 50
  end

  def setup1119
    @character_name = "Lizard_Youkai/Green/"
    @width = 80
    @height = 130
    @hitbox_aoe = 34
    @hitbox_x_size = 0
    @hitbox_y_size = 42
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack1a", "attack1b", "attack2", "attack3"]
    @pattern_speed = [6, 6, 6, 5, 6, 
    6, 6, 6, 6, 6, 
    8, 8, 8, 6]
    @pattern_max = [6, 6, 5, 1, 6, 
    4, 4, 4, 4, 6, 
    6, 3, 6, 7]
    @pattern_loop = [6, 6, 1, 1, 6, 
    4, 4, 4, 4, 6, 
    1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 2
    @slide_move_speed = 0
    @appearance_count = 40
    @death_time = 40
  end

  def setup1120
    @character_name = "Yin_Yang/Shiny/"
    @width = 32
    @height = 32
    @blend_type = 1
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1121
    @character_name = "Plush/Special/"
    @width = 26
    @height = 88
    @hitbox_aoe = 10
    @hitbox_x_size = 0
    @hitbox_y_size = 52
    @pattern_name = ["stand", "stand", "death", "hit", "attack1", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack1", "attack2", "attack1"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    6, 4, 6, 6, 4, 
    6, 8, 6]
    @pattern_max = [8, 8, 5, 1, 10, 
    8, 8, 8, 8, 8, 
    10, 10, 10]
    @pattern_loop = [8, 8, 1, 1, 8, 
    8, 8, 8, 8, 8, 
    8, 1, 8]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 4
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

	def setup1122
    setup1088
	end

	def setup1123
    setup1072
	end

	def setup1124
    setup1037
	end

	def setup1125
    setup1096
	end

	def setup1126
    setup1001
	end

	def setup1127
    setup1002
	end

	def setup1128
    setup1003
	end

	def setup1129
    setup1004
	end

	def setup1130
    setup1005
	end

	def setup1131
    setup1006
	end

	def setup1132
    setup1007
	end

	def setup1133
    setup1008
	end

  def setup1134
    @character_name = "Giant_Flower/Normal/"
    @width = 44
    @height = 98
    @hitbox_aoe = 16
    @hitbox_x_size = 0
    @hitbox_y_size = 54
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "stand", "stand", "stand", "stand", "guard", 
    "attack1", "attack2", "attack3"]
    @pattern_speed = [6, 6, 6, 10, 6, 
    6, 6, 6, 6, 6, 
    5, 5, 5]
    @pattern_max = [6, 6, 8, 1, 6, 
    6, 6, 6, 6, 8, 
    8, 14, 12]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    8, 1, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 40
    @death_time = 50
  end

	def setup1135
    setup1009
	end
  
  def setup1136
    setup1005
  end
  
  def setup1137
    setup1012
  end
  
  def setup1138
    setup1013
  end
  
  def setup1139
    setup1014
  end
  
  def setup1140
    setup1015
  end
  
  def setup1141
    setup1016
  end
  
  def setup1142
    setup1017
  end
  
  def setup1143
    setup1018
  end
  
  def setup1144
    setup1019
  end
  
  def setup1145
    setup1020
  end
  
  def setup1146
    setup1110
  end
  
  def setup1147
    setup1022
  end

  def setup1148
    @character_name = "Bonefish/Aura/"
    @width = 54
    @height = 54
    @hitbox_aoe = 24
    @hitbox_x_size = 0
    @hitbox_y_size = 0
    @pattern_name = ["swim", "swim", "death", "hit", "swim", 
    "swim", "swim", "swim", "swim", "swim", 
    "attack1", "attack2", "swim"]
    @pattern_speed = [8, 8, 5, 5, 8, 
    8, 8, 8, 8, 8, 
    8, 8, 8]
    @pattern_max = [6, 6, 9, 1, 6, 
    6, 6, 6, 6, 6, 
    12, 10, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    6, 1, 6]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 5
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 45
  end
  
  def setup1149
    setup1023
  end
  
  def setup1150
    setup1018
  end
  
  def setup1151
    setup1024
  end
  
  def setup1152
    setup1024
  end
  
  def setup1153
    setup1026
  end
  
  def setup1154
    setup1027
  end
  
  def setup1155
    setup1028
  end
  
  def setup1156
    setup1029
  end
  
  def setup1157
    setup1030
  end
  
  def setup1158
    setup1031
  end
  
  def setup1159
    setup1032
  end
  
  def setup1160
    @character_name = "Flying_Book/White/"
    @width = 32
    @height = 32
    @hitbox_aoe = 10
    @hitbox_x_size = 2
    @hitbox_y_size = 0
    @pattern_name = ["stand", "appear", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [8, 4, 8, 8, 4, 8, 8, 8, 8, 8, 8]
    @pattern_max = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]
    @pattern_loop = [8, 1, 8, 8, 8, 8, 8, 8, 8, 8, 8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 30
    @death_time = 40
  end
  
  def setup1161
    setup1033
  end
  
  def setup1162
    setup1035
  end
  
  def setup1163
    setup1036
  end
  
  def setup1164
    setup1037
  end
  
  def setup1165
    setup1038
  end
  
  def setup1166
    setup1038
  end

  def setup1167
    @character_name = "Flandre/"
    @width = 30
    @height = 88
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 52
    @pattern_name = ["stand", "stand", "death", "stand", "spell", 
    "walk", "walk", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [5, 5, 6, 5, 8, 
    6, 6, 5, 5, 5, 
    5]
    @pattern_max = [8, 8, 8, 8, 6, 
    4, 4, 8, 8, 8, 
    8]
    @pattern_loop = [8, 8, 1, 8, 2, 
    4, 4, 8, 8, 8, 
    8]
    @through = true
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 10
    @death_time = 48
  end

  def setup1168
    setup1167
  end
  
  def setup1169
    setup1038
  end
  
  def setup1170
    setup1040
  end
  
  def setup1171
    setup1041
  end
  
  def setup1172
    setup1042
  end

  def setup1173
    @character_name = "Slime/Green/"
    @width = 48
    @height = 44
    @hitbox_aoe = 16
    @hitbox_x_size = 0
    @hitbox_y_size = 8
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack", "attack", "attack"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    5, 5, 6, 6, 6, 
    8, 5, 8]
    @pattern_max = [3, 3, 5, 1, 3, 
    7, 7, 3, 3, 3, 
    6, 6, 6]
    @pattern_loop = [3, 3, 1, 1, 3, 
    7, 7, 3, 3, 3, 
    3, 3, 3]
    @gravity_type = 0
    @jump_power = 6
    @base_walk_move_speed = 1.5
    @slide_move_speed = 8
    @appearance_count = 40
    @death_time = 40
  end
  
  def setup1174
    setup1043
  end
  
  def setup1175
    setup1044
  end
  
  def setup1176
    setup1045
  end
  
  def setup1177
    setup1112
  end
  
  def setup1178
    setup1047
  end
  
  def setup1179
    setup1049
  end
  
  def setup1180
    setup1050
  end
  
  def setup1181
    setup1051
  end
  
  def setup1182
    setup1052
  end
  
  def setup1183
    setup1053
  end
  
  def setup1184
    setup1054
  end
  
  def setup1185
    setup1055
  end
  
  def setup1186
    setup1056
  end
  
  def setup1187
    setup1023
  end
  
  def setup1188
    setup1057
  end
  
  def setup1189
    setup1058
  end
  
  def setup1190
    setup1059
  end
  
  def setup1191
    setup1060
  end
  
  def setup1192
    setup1061
  end
  
  def setup1193
    setup1062
  end
  
  def setup1194
    setup1063
  end
  
  def setup1195
    setup1064
  end
  
  def setup1196
    setup1065
  end
  
  def setup1197
    setup1066
  end
  
  def setup1198
    setup1067
  end
  
  def setup1199
    setup1068
  end
  
  def setup1200
    setup1069
  end
  
  def setup1201
    setup1071
  end
  
  def setup1202
    setup1072
  end
  
  def setup1203
    setup1073
  end
  
  def setup1204
    setup1074
  end

  def setup1205
    @character_name = "Rin/"
    @width = 32
    @height = 26
    @pattern_name = ["stand", "stand", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "move"]
    @pattern_speed = [6, 6, 6, 6, 6, 
    6, 6, 6, 6, 6, 
    10]
    @pattern_max = [2, 2, 2, 2, 2, 
    2, 2, 2, 2, 2, 
    4]
    @pattern_loop = [2, 2, 2, 2, 2, 
    2, 2, 2, 2, 2, 
    1]
    @through = true
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 40
    @death_time = 40
  end
  
  def setup1206
    setup1074
  end

  def setup1207
    setup1075
  end

  def setup1208
    setup1076
  end

  def setup1209
    setup1077
  end

  def setup1210
    setup1078
  end

  def setup1211
    setup1079
  end

  def setup1212
    setup1080
  end

  def setup1213
    @character_name = "Shinigami_Orb/Green/"
    @width = 36
    @height = 48
    @hitbox_aoe = 20
    @blend_type = 1
    @pattern_name = ["stand", "stand", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
    @pattern_max = [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
    @pattern_loop = [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 30
    @death_time = 30
  end

  def setup1214
    @character_name = "Shinigami_Orb/Gray/"
    @width = 36
    @height = 48
    @hitbox_aoe = 20
    @blend_type = 1
    @pattern_name = ["stand", "stand", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
    @pattern_max = [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
    @pattern_loop = [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 30
    @death_time = 30
  end

  def setup1215
    @character_name = "Shinigami_Orb/Yellow/"
    @width = 36
    @height = 48
    @hitbox_aoe = 20
    @blend_type = 1
    @pattern_name = ["stand", "stand", "stand", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5]
    @pattern_max = [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
    @pattern_loop = [6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 30
    @death_time = 30
  end

  def setup1216
    setup1081
  end

  def setup1217
    setup1082
  end

  def setup1218
    setup1083
  end

  def setup1219
    setup1084
  end

  def setup1220
    setup1085
  end

  def setup1221
    setup1086
  end

  def setup1222
    setup1087
  end

  def setup1223
    setup1088
  end

  def setup1224
    setup1089
  end
  
  def setup1225
    setup1089
  end
  
  def setup1226
    setup1091
  end

  def setup1227
    setup1092
  end
  
  def setup1228
    setup1092
    @gravity_type = 2
  end

  def setup1229
    setup1089
  end

  def setup1230
    setup1103
  end

  def setup1231
    setup1104
  end

  def setup1232
    setup1105
  end

  def setup1233
    setup1106
  end

  def setup1234
    setup1107
  end

  def setup1235
    setup1108
  end

  def setup1236
    setup1109
  end

  def setup1237
    setup1110
  end

  def setup1238
    setup1111
  end

  def setup1239
    setup1112
  end

  def setup1240
    setup1113
  end

  def setup1241
    setup1114
  end

  def setup1242
    setup1115
  end

  def setup1243
    setup1116
  end

  def setup1244
    setup1117
  end

  def setup1245
    setup1118
  end

  def setup1246
    setup1119
  end

  def setup1247
    setup1120
  end

  def setup1248
    setup1121
  end

  def setup1249
    setup1122
  end

  def setup1250
    setup1123
  end

  def setup1251
    setup1124
  end

  def setup1252
    setup1125
  end

  def setup1253
    setup1066
  end

  def setup1254
    setup1125
  end

  def setup1255
    @character_name = "Angel_Fairy/Normal/"
    @width = 30
    @height = 64
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 24
    @pattern_name = ["fly", "fly", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack", "fly"]
    @pattern_speed = [8, 8, 8, 8, 8, 
    5, 5, 5, 5, 8, 
    8, 5]
    @pattern_max = [6, 6, 3, 2, 6, 
    6, 6, 6, 6, 6, 
    5, 6]
    @pattern_loop = [6, 6, 1, 1, 6, 
    6, 6, 6, 6, 6, 
    3, 6]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 40
  end

  def setup1256
    @character_name = "Plush/Green/"
    @width = 26
    @height = 88
    @hitbox_aoe = 10
    @hitbox_x_size = 0
    @hitbox_y_size = 52
    @pattern_name = ["stand", "stand", "death", "hit", "attack1", 
    "walk", "walk", "walk", "walk", "stand", 
    "attack1", "attack2", "attack1"]
    @pattern_speed = [6, 6, 7, 5, 6, 
    6, 4, 6, 6, 4, 
    6, 8, 6]
    @pattern_max = [8, 8, 5, 1, 10, 
    8, 8, 8, 8, 8, 
    10, 10, 10]
    @pattern_loop = [8, 8, 1, 1, 8, 
    8, 8, 8, 8, 8, 
    8, 1, 8]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 4
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1257
    @character_name = "Celestial_Beast/Normal/"
    @width = 28
    @height = 56
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 22
    @pattern_name = ["stand", "stand", "death", "hit", "stand", 
    "walk", "walk", "stand", "stand", "stand", 
    "stand", "attack"]
    @pattern_speed = [8, 8, 8, 5, 8, 
    6, 4, 8, 8, 8, 
    8, 8]
    @pattern_max = [6, 6, 4, 1, 6, 
    3, 3, 6, 6, 6, 
    6, 11]
    @pattern_loop = [6, 6, 1, 1, 6, 
    3, 3, 6, 6, 6, 
    6, 1]
    @gravity_type = 0
    @jump_power = 0
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 40
    @death_time = 40
  end

  def setup1258
    @character_name = "Celestial_Guardian/Normal/"
    @width = 40
    @height = 94
    @hitbox_aoe = 18
    @hitbox_x_size = 0
    @hitbox_y_size = 46
    @pattern_name = ["stand", "stand", "death", "hit", "attack1", 
    "walk", "walk", "stand", "stand", "stand", 
    "attack1", "attack2", "attack3a", "attack3b"]
    @pattern_speed = [6, 6, 5, 6, 5, 
    6, 6, 6, 6, 6, 
    5, 5, 4, 6]
    @pattern_max = [5, 5, 10, 2, 13, 
    6, 6, 5, 5, 5, 
    13, 13, 6, 6]
    @pattern_loop = [5, 5, 1, 1, 12, 
    6, 6, 5, 5, 5, 
    12, 12, 4, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 2.5
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 50
  end

  def setup1259
    @character_name = "Celestial_Whale/Normal/"
    @width = 128
    @height = 180
    @hitbox_aoe = 64
    @hitbox_x_size = 0
    @hitbox_y_size = 20
    @pattern_name = ["stand", "stand", "death", "hit", "fly", 
    "fly", "fly", "fly", "fly", "fly", 
    "attack1", "attack2", "attack3", "attack4"]
    @pattern_speed = [6, 6, 5, 5, 6, 
    6, 6, 6, 6, 6, 
    5, 6, 6, 6]
    @pattern_max = [8, 8, 11, 1, 8, 
    8, 8, 8, 8, 8, 
    15, 14, 13, 13]
    @pattern_loop = [8, 8, 1, 1, 8, 
    8, 8, 8, 8, 8, 
    1, 1, 1, 1]
    @gravity_type = 1
    @jump_power = 2
    @base_walk_move_speed = 2
    @slide_move_speed = 12
    @appearance_count = 40
    @death_time = 60
  end

  def setup1260
    @character_name = "Yin_Yang/Yellow/"
    @width = 32
    @height = 32
    @pattern_name = ["stand", "appear", "disappear", "stand", "stand", 
    "stand", "stand", "stand", "stand", "stand", 
    "stand"]
    @pattern_speed = [1, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_max = [1, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
    @pattern_loop = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    @through = true
    @autospin = [-6, -10, -10, -6, -6, -6, -6, -6, -6, -6, -8]
    @gravity_type = 2
    @jump_power = 0
    @base_walk_move_speed = 0
    @slide_move_speed = 0
    @appearance_count = 50
    @death_time = 40
  end

  def setup1261
    @character_name = "Komachi/"
    @width = 30
    @height = 100
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 60
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "c2", "s1", "s2a", "s2b", "s3", "s4"]
    @pattern_speed = [5, 5, 5, 5, 6, 
    4, 5, 7, 5, 8, 
    3, 4, 5, 6, 6, 5, 5]
    @pattern_max = [8, 1, 10, 4, 7, 
    16, 6, 3, 4, 3, 
    10, 12, 14, 9, 5, 10, 12]
    @pattern_loop = [8, 1, 1, 1, 2, 
    16, 4, 1, 2, 2, 
    1, 1, 1, 2, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end
  
  def setup1262
    setup1261
  end

  def setup1263
    @character_name = "Tenshi/"
    @width = 30
    @height = 96
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 56
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3", "s4a", "s4b"]
    @pattern_speed = [6, 5, 6, 5, 6, 
    5, 6, 5, 5, 8, 
    5, 6, 5, 7, 5, 3]
    @pattern_max = [5, 1, 8, 4, 6, 
    8, 4, 4, 5, 3, 
    10, 12, 15, 15, 9, 18]
    @pattern_loop = [5, 1, 1, 1, 2, 
    8, 2, 1, 2, 2, 
    1, 1, 1, 1, 1, 18]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end

  def setup1264
    @character_name = "Iku/"
    @width = 30
    @height = 106
    @hitbox_aoe = 12
    @hitbox_x_size = 0
    @hitbox_y_size = 64
    @pattern_name = ["stand", "appear", "death", "hit", "spell", 
    "walk", "run", "jump", "land", "guard", 
    "c1", "s1", "s2", "s3", "s4"]
    @pattern_speed = [5, 5, 7, 5, 6, 
    5, 6, 5, 5, 8, 
    4, 5, 5, 4, 4]
    @pattern_max = [9, 1, 5, 4, 5, 
    6, 4, 5, 4, 3, 
    15, 11, 11, 13, 18]
    @pattern_loop = [9, 1, 1, 1, 2, 
    4, 2, 1, 2, 2, 
    1, 1, 1, 1, 1]
    @gravity_type = 0
    @jump_power = 8
    @base_walk_move_speed = 3
    @slide_move_speed = 15
    @appearance_count = 10
    @death_time = 60
  end
end