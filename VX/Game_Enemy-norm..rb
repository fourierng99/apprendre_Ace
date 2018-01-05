class Game_Enemy < Game_Battler

	def setup0
	  @face_name = ""
	  @immortal = false
	  @lifespan = 0
	  @base_guard_max = 1500
	  @base_cast_speed = 100
	  @boss = false
	  @no_hp_bar = false
    @small_bar_type = 0
	  @base_maxhp_bar = 1
	  @base_hyper_max = 20
	  @boss_bar_drop_list = []
    @survival_scaling_level = 0
    @survival_scaling_hp_value = 0
	  @resist_states = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @ignore_enemy_defense_prob = 0
	  @immune_to_interruption = false
	  @immune_to_bump = false
	  @max_attacks = 1
	  @combo_attack_id = [1]
	  @quickskill_id = []
	  @spellcard_id = []
	  @spellcard_casting_value = []
	  @action_frequency = 30
	  @base_action_set = {}
	  @casting_action_set = {}
	  @hyper_action_set = {}
	  @drop_list = {}
	  @boss_bar_drop_list = []
	end

	def setup1 # Forest Youkai 01
    @survival_scaling_level = 5
    @survival_scaling_hp_value = 4
	  @base_cast_speed = 80
	  @base_elem_resist = [0, -100, 0, 0, 50]
	  @max_attacks = 1
	  @combo_attack_id = [101]
	  @quickskill_id = [102]
	  @spellcard_id = [103]
	  @spellcard_casting_value = [10]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [3, 6], [13, 2], [27, 2], 
	  [30, 4], [31, 2], [32, 1]]
	  @casting_action_set = [[0, 2], [24, 1]]
	  @hyper_action_set = []
	  @drop_list = [[2033, 8], [1, 230], [2, 20], [11, 100], [32, 20], [41, 20]]
	end

	def setup2 # Fairy 01
    @survival_scaling_level = 6
    @survival_scaling_hp_value = 5
	  @base_elem_resist = [0, 0, 50, -100, 0]
	  @max_attacks = 1
	  @combo_attack_id = [104]
	  @quickskill_id = [105, 106]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [3, 4], [11, 2], [24, 4], 
	  [33, 3], [34, 2], [35, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2025, 7], [1, 280], [2, 30], [11, 100], [31, 20], [41, 30]]
	end

	def setup3 # Poisonous Flower 01
    @survival_scaling_level = 6
    @survival_scaling_hp_value = 2
	  @base_elem_resist = [0, -100, 0, 0, 0]
	  @resist_states = [100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [107]
	  @quickskill_id = [108]
	  @action_frequency = 50
	  @base_action_set = [[0, 16], [36, 6], [37, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2031, 12], [1, 160], [11, 50]]
	end

	def setup4 # Yin Yang 01
	  @immortal = true
	  @lifespan = 600
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [109]
	  @action_frequency = 10
	  @base_action_set = [[38, 1]]
	end

	def setup5 # Cirno A
	  @face_name = "Cirno"
	  @base_guard_max = 600
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 4
	  @boss_bar_drop_list = [41, 41, 41]
	  @resist_states = [50, 50, 50, 50, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 50, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [110]
	  @quickskill_id = [111, 112, 113, 114]
	  @spellcard_id = [115]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 8], [8, 3], [11, 2], [13, 3], [27, 2], 
	  [39, 6], [40, 6], [41, 4], [42, 2], [43, 2], [44, 1], [45, 1]]
	  @casting_action_set = [[0, 2], [13, 3], [23, 3], [26, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup6 # Haunted Tree 01
    @small_bar_type = 1
    @survival_scaling_level = 7
    @survival_scaling_hp_value = 18
	  @resist_states = [0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, -100, 0, 0, 50]
	  @max_attacks = 1
	  @combo_attack_id = [116]
	  @quickskill_id = [117, 118]
	  @spellcard_id = [119]
	  @spellcard_casting_value = [10]
	  @action_frequency = 40
	  @base_action_set = [[0, 10], [2, 6], [46, 4], [47, 4], [48, 2], [49, 1]]
	  @casting_action_set = [[0, 1]]
	  @hyper_action_set = []
	  @drop_list = [[2035, 18], [2, 150], [31, 100], [41, 100]]
	end

	def setup7 # Doll 01
    @survival_scaling_level = 7
    @survival_scaling_hp_value = 4
	  @max_attacks = 1
	  @combo_attack_id = [120]
	  @quickskill_id = [121]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [1, 2], [3, 2], [4, 2], [10, 3], [50, 2], [51, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 130], [2, 20], [11, 80]]
	end

	def setup8 # Doll 02
    @survival_scaling_level = 7
    @survival_scaling_hp_value = 4
	  @max_attacks = 1
	  @combo_attack_id = [122]
	  @quickskill_id = [123]
	  @action_frequency = 35
	  @base_action_set = [[0, 4], [4, 2], [10, 3], [13, 6], [26, 4], [28, 6], 
	  [52, 3], [53, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 160], [2, 30], [41, 60]]
	end

	def setup9 # Alice A
	  @face_name = "Alice"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 5
	  @boss_bar_drop_list = [41, 11, 41, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [124]
	  @quickskill_id = [125, 126, 127, 128, 129]
	  @spellcard_id = [130]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 9], [2, 4], [8, 3], [11, 3], [13, 2], 
	  [54, 4], [55, 3], [56, 2], [57, 3], [58, 2], [59, 2], [60, 3]]
	  @casting_action_set = [[13, 2], [23, 4], [29, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup10 # Marisa
	  @immortal = true
	  @max_attacks = 1
	  @combo_attack_id = [131]
	end

	def setup11 # Sakuya
	  @immortal = true
	end

	def setup12 # Three-Tails Fox 01
    @survival_scaling_level = 12
    @survival_scaling_hp_value = 5
	  @base_elem_resist = [0, 0, -100, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [132]
	  @quickskill_id = [133]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [3, 3], [8, 2], [10, 2], [61, 3], [62, 5]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 230], [2, 45], [11, 70], [12, 20], [41, 30]]
	end

	def setup13 # Sunflower Fairy 01
    @survival_scaling_level = 12
    @survival_scaling_hp_value = 5
	  @base_guard_max = 2000
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 50, 0, -100, 0]
	  @max_attacks = 1
	  @combo_attack_id = [134]
	  @quickskill_id = [135]
	  @spellcard_id = [136]
	  @spellcard_casting_value = [10]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [1, 3], [4, 2], [10, 2], [20, 3], [25, 1], 
	  [63, 3], [64, 2], [65, 2]]
	  @casting_action_set = [[13, 2], [20, 2], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[2002, 10], [1, 220], [2, 40], [11, 100], [31, 30], [51, 30]]
	end

	def setup14 # Yin Yang 02
	  @immortal = true
	  @lifespan = 900
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [137]
	  @action_frequency = 10
	  @base_action_set = [[66, 1]]
	end

	def setup15 # Yin Yang 03
	  @immortal = true
	  @lifespan = 780
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [138]
	  @action_frequency = 10
	  @base_action_set = [[67, 1]]
	end

	def setup16 # Bonefish 01
	  @base_elem_resist = [0, 0, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [139]
	  @quickskill_id = [140]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [4, 4], [11, 3], [15, 2], [26, 2], 
	  [68, 3], [69, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 350], [11, 80]]
	end

	def setup17 # Little Fairy 01
    @survival_scaling_level = 12
    @survival_scaling_hp_value = 4
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @quickskill_id = [141, 142, 143]
	  @action_frequency = 40
	  @base_action_set = [[0, 8], [4, 5], [13, 3], [15, 2], [25, 3], [29, 3], 
	  [70, 4], [71, 3], [72, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 180], [21, 200], [31, 50], [41, 25]]
	end

	def setup18 # Reisen A
	  @face_name = "Reisen"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 4
	  @base_hyper_max = 32
	  @boss_bar_drop_list = [11, 41, 11]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [144]
	  @quickskill_id = [145, 146, 147, 148]
	  @spellcard_id = [149]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 8], [3, 4], [13, 5], [21, 2], [27, 3], [28, 3], 
	  [73, 3], [74, 2], [75, 2], [76, 2], [77, 2], [78, 2], [79, 8]]
	  @casting_action_set = [[0, 2], [21, 2], [27, 3]]
	  @hyper_action_set = [[4, 4], [13, 5], [27, 3], [28, 3], 
	  [73, 3], [74, 2], [75, 2], [76, 2], [77, 4], [78, 4]]
	  @drop_list = []
	end

	def setup19 # Giant Squid 01
    @small_bar_type = 1
    @survival_scaling_level = 14
    @survival_scaling_hp_value = 10
	  @base_elem_resist = [0, 0, 50, 50, -100]
	  @max_attacks = 1
	  @combo_attack_id = [150]
	  @quickskill_id = [151]
	  @action_frequency = 40
	  @base_action_set = [[0, 4], [2, 6], [10, 2], [80, 2], [81, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2014, 12], [2, 130], [11, 80], [33, 20]]
	end

	def setup20 # Wyvern 01
    @small_bar_type = 1
    @survival_scaling_level = 15
    @survival_scaling_hp_value = 18
	  @base_cast_speed = 80
	  @resist_states = [0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, -100, 50, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [152]
	  @quickskill_id = [153, 154]
	  @spellcard_id = [155, 156]
	  @spellcard_casting_value = [10, 15]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [4, 4], [11, 4], [16, 2], [25, 3], 
	  [82, 4], [83, 4], [84, 3], [85, 2], [86, 2]]
	  @casting_action_set = [[0, 2], [11, 2], [16, 1], [26, 3]]
	  @hyper_action_set = []
	  @drop_list = [[1042, 18], [2, 130], [3, 20], [31, 50], [32, 50], [33, 50], [41, 80]]
	end

	def setup21 # Cirno B
	  @face_name = "Cirno"
	  @base_guard_max = 800
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 5
	  @boss_bar_drop_list = [41, 11, 41, 11]
	  @resist_states = [50, 50, 50, 50, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 50, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [110]
	  @quickskill_id = [111, 157, 158, 114]
	  @spellcard_id = [115, 159, 160]
	  @spellcard_casting_value = [10, 10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 8], [8, 3], [11, 2], [13, 3], [27, 2], 
	  [39, 4], [40, 4], [41, 3], [42, 2], [87, 2], [88, 1], [89, 1], [90, 2]]
	  @casting_action_set = [[0, 2], [13, 3], [23, 3], [26, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup22 # Lizard Youkai 01
    @small_bar_type = 1
    @survival_scaling_level = 16
    @survival_scaling_hp_value = 15
	  @base_hyper_max = 16
	  @resist_states = [50, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [161]
	  @quickskill_id = [162, 163, 164]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [3, 4], [24, 2], 
    [91, 3], [92, 2], [94, 1], [95, 1]]
	  @casting_action_set = []
	  @hyper_action_set = [[0, 3], [2, 5], [91, 3], [92, 2], [93, 5], [94, 2]]
	  @drop_list = [[2004, 14], [2, 160], [11, 100], [12, 30], [32, 60], [41, 120]]
	end

	def setup23 # Aya A
	  @face_name = "Aya"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @boss_bar_drop_list = [41, 41, 31, 41, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @max_attacks = 2
	  @combo_attack_id = [165, 166]
	  @quickskill_id = [167, 168, 169, 170]
	  @spellcard_id = [171, 172]
	  @spellcard_casting_value = [15, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [2, 2], [4, 4], [7, 6], [13, 3], [15, 2], 
	  [20, 4], [25, 3], [27, 4], 
	  [96, 4], [97, 2], [98, 2], [99, 4], [100, 2], [101, 2], [102, 1]]
	  @casting_action_set = [[0, 2], [13, 2], [21, 3], [27, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup24 # Meiling A
	  @face_name = "Meiling"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 5
	  @boss_bar_drop_list = []
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [173, 174]
	  @quickskill_id = [175, 176, 177, 178, 179]
	  @spellcard_id = [180]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 8], [1, 5], [4, 4], [6, 2], [9, 2], [11, 3], 
	  [103, 7], [104, 2], [107, 4], [108, 10]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup25 # Meiling B
	  @face_name = "Meiling"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 5
	  @boss_bar_drop_list = [41, 41, 41, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [173, 174]
	  @quickskill_id = [175, 176, 177, 178, 179]
	  @spellcard_id = [180]
	  @spellcard_casting_value = [10]
	  @action_frequency = 20
	  @base_action_set = [[0, 6], [1, 4], [4, 3], [6, 2], [9, 2], [11, 3], 
	  [103, 6], [104, 3], [105, 1], [106, 2], [107, 5], [109, 3]]
	  @casting_action_set = [[0, 2], [13, 2], [21, 3], [27, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup26 # Fire Beast 01
    @small_bar_type = 1
    @survival_scaling_level = 18
    @survival_scaling_hp_value = 10
	  @base_elem_resist = [0, 50, -100, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [181]
	  @quickskill_id = [182, 183]
	  @spellcard_id = [184]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [3, 4], [8, 3], [11, 3], [25, 3], 
	  [110, 3], [111, 2], [112, 2], [113, 2]]
	  @casting_action_set = [[0, 4], [11, 2], [24, 3]]
	  @hyper_action_set = []
	  @drop_list = [[1, 140], [2, 140], [12, 100], [32, 50], [41, 60]]
	end

	def setup27 # Gargoyle 01
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 50]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [185]
	  @quickskill_id = [186]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [114, 1], [115, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 25], [41, 100], [51, 50]]
	end

	def setup28 # Maid_Fairy 01
    @survival_scaling_level = 18
    @survival_scaling_hp_value = 5
	  @base_guard_max = 1200
	  @base_elem_resist = [0, 0, 0, -100, 0]
	  @max_attacks = 1
	  @combo_attack_id = [187]
	  @quickskill_id = [188, 189]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [2, 1], [3, 3], [7, 1], [13, 2], [20, 2], 
	  [25, 2], [27, 2], [116, 2], [117, 2], [118, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2024, 10], [1, 160], [2, 100], [11, 180], [31, 50], [41, 40]]
	end

	def setup29 # One_Eye_Bat 01
    @survival_scaling_level = 18
    @survival_scaling_hp_value = 2
	  @base_elem_resist = [0, 0, 0, -100, 50]
	  @max_attacks = 1
	  @combo_attack_id = [190]
	  @quickskill_id = [191]
	  @action_frequency = 20
	  @base_action_set = [[0, 7], [1, 3], [3, 6], [11, 5], [15, 3], [25, 5], 
	  [119, 3], [120, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 400], [41, 30]]
	end

	def setup30 # Yin Yang 04
	  @immortal = true
	  @lifespan = 360
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [192]
	  @action_frequency = 10
	  @base_action_set = [[121, 1]]
	end

	def setup31 # Flying Book 01
    @survival_scaling_level = 20
    @survival_scaling_hp_value = 4
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 50, -100, -100, 50]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @spellcard_id = [193, 194]
	  @spellcard_casting_value = [15, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [122, 1], [123, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 120], [21, 150], [41, 30]]
	end

	def setup32 # Flying Book 02
    @survival_scaling_level = 20
    @survival_scaling_hp_value = 4
	  @base_cast_speed = 100
	  @base_elem_resist = [0, -100, 50, 50, -100]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @spellcard_id = [195, 196]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [124, 1], [125, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 120], [21, 150], [41, 30]]
	end

	def setup33 # Ghost Book 01
    @small_bar_type = 1
    @survival_scaling_level = 20
    @survival_scaling_hp_value = 10
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [197]
	  @quickskill_id = [198]
	  @spellcard_id = [199, 200]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [1, 3], [4, 2], [10, 2], [25, 1], 
	  [126, 2], [127, 1], [128, 1], [129, 1]]
	  @casting_action_set = [[0, 3], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[2026, 14], [2, 200], [11, 100], [12, 30], [21, 70], [22, 30]]
	end

	def setup34 # Flying Book Special
    @small_bar_type = 1
	  @base_cast_speed = 100
	  @resist_states = [75, 75, 75, 75, 75, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @quickskill_id = [201]
	  @spellcard_id = [193, 194, 195, 196, 202]
	  @spellcard_casting_value = [20, 20, 20, 20, 6]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], 
	  [130, 1], [131, 1], [132, 1], [133, 1], [134, 2], [135, 6]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 1000]]
	end

	def setup35 # Patchouli A
	  @face_name = "Patchouli"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 5
	  @boss_bar_drop_list = [41, 21, 41, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [203]
	  @quickskill_id = [204, 205, 206, 207]
	  @spellcard_id = [208, 209]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 10], [2, 3], [8, 2], [11, 3], [13, 2], [20, 3], [24, 2], [27, 2], 
	  [136, 6], [137, 2], [138, 2], [139, 2], [140, 2], [141, 2], [142, 2]]
	  @casting_action_set = [[0, 2], [20, 2], [27, 1]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup36 # Snake 01
    @small_bar_type = 1
    @survival_scaling_level = 20
    @survival_scaling_hp_value = 18
	  @base_guard_max = 1400
	  @resist_states = [100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 50, -100]
	  @max_attacks = 1
	  @combo_attack_id = [210]
	  @quickskill_id = [211, 212]
	  @action_frequency = 30
	  @base_action_set = [[0, 4], [3, 3], [4, 2], [20, 6], [21, 3], 
	  [143, 4], [144, 3], [145, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2066, 15], [1, 100], [2, 170], [11, 100], [32, 40], [41, 50]]
	end

	def setup37 # Shadow Sakuya
	  @face_name = "Shadow_Sakuya"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 4
	  @boss_bar_drop_list = [41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [213, 214]
	  @quickskill_id = [215, 216, 217, 218, 219]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [1, 4], [3, 3], [9, 2], [11, 3], [20, 2], 
	  [146, 4], [147, 2], [148, 1], [149, 3], [150, 3], [151, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup38 # Remilia A
	  @face_name = "Remilia"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @boss_bar_drop_list = [41, 31, 41, 31, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [220]
	  @quickskill_id = [221, 222, 223, 224]
	  @spellcard_id = [225, 226]
	  @spellcard_casting_value = [15, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 8], [8, 3], [11, 2], [13, 3], [24, 2], [27, 2], 
	  [152, 6], [153, 2], [154, 2], [155, 2], [157, 2], [158, 1], [159, 1]]
	  @casting_action_set = [[0, 1], [21, 2], [27, 2]]
	  @hyper_action_set = [[0, 2], [3, 8], [7, 2], [8, 4], [11, 2], [13, 3], [24, 2], [27, 2], 
	  [152, 6], [153, 2], [154, 2], [155, 2], [156, 6]]
	  @drop_list = []
	end

	def setup39 # Remilia Clone
	  @lifespan = 600
	  @no_hp_bar = true
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [227]
	  @quickskill_id = [228]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [3, 8], [8, 3], [11, 2], [13, 3], [24, 2], [27, 2], 
	  [160, 4], [161, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup40 # Fairy 02
    @survival_scaling_level = 25
    @survival_scaling_hp_value = 5
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @max_attacks = 1
	  @combo_attack_id = [229]
	  @quickskill_id = [230, 231]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [3, 4], [9, 2], [11, 3], [15, 1], [24, 2], 
	  [162, 2], [163, 1], [164, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2056, 10], [1, 200], [2, 150], [12, 70], [41, 40], [51, 40]]
	end

	def setup41 # Little Fairy 02
    @survival_scaling_level = 25
    @survival_scaling_hp_value = 4
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @quickskill_id = [232, 233, 234]
	  @action_frequency = 40
	  @base_action_set = [[0, 8], [4, 5], [13, 3], [15, 1], [25, 3], [29, 3], 
	  [165, 3], [166, 2], [167, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [21, 200], [22, 50], [31, 50], [41, 30]]
	end

	def setup42 # Slime 01
    @survival_scaling_level = 26
    @survival_scaling_hp_value = 3
	  @base_elem_resist = [0, 0, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [235]
	  @quickskill_id = [236, 237]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [2, 5], [3, 3], [11, 3], [24, 3], 
	  [168, 2], [169, 2], [170, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[31, 50], [32, 50], [33, 50], [34, 40]]
	end

	def setup43 # Ice Flower 01
    @survival_scaling_level = 26
    @survival_scaling_hp_value = 2
	  @base_elem_resist = [0, -100, 50, 0, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [238]
	  @quickskill_id = [239]
	  @action_frequency = 50
	  @base_action_set = [[0, 16], [171, 5], [172, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 180], [11, 150], [41, 50]]
	end

	def setup44 # Yin Yang 05
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [240]
	  @quickskill_id = [241]
	  @action_frequency = 15
	  @base_action_set = [[173, 8], [174, 1]]
	end

	def setup45 # Yin Yang 06
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [242]
	  @quickskill_id = [243]
	  @action_frequency = 15
	  @base_action_set = [[175, 8], [176, 1]]
	end

	def setup46 # Aya B
	  @face_name = "Aya"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @boss_bar_drop_list = [41, 12, 41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @max_attacks = 2
	  @combo_attack_id = [165, 166]
	  @quickskill_id = [167, 168, 169, 170, 244]
	  @spellcard_id = [245, 246]
	  @spellcard_casting_value = [15, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [2, 2], [4, 4], [7, 6], [13, 3], [15, 2], 
	  [20, 4], [25, 3], [27, 4],
	  [96, 4], [97, 2], [98, 2], [99, 4], [100, 2], [177, 3], [178, 1], [179, 1]]
	  @casting_action_set = [[0, 2], [13, 2], [21, 3], [27, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup47 # Snow Youkai 01
    @survival_scaling_level = 28
    @survival_scaling_hp_value = 4
	  @base_elem_resist = [0, -100, 50, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [247]
	  @quickskill_id = [248, 249]
	  @spellcard_id = [250]
	  @spellcard_casting_value = [10]
	  @action_frequency = 20
	  @base_action_set = [[0, 12], [1, 3], [2, 2], [5, 2], [7, 3], [9, 2], [13, 3], 
    [180, 2], [181, 5], [182, 1], [183, 2]]
	  @casting_action_set = [[1, 1], [5, 1]]
	  @hyper_action_set = []
	  @drop_list = [[1004, 14], [1, 200], [3, 40], [12, 100], [41, 50], [51, 40]]
	end

	def setup48 # Slime Special
    @small_bar_type = 1
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [251]
	  @quickskill_id = [252, 253]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [2, 5], [3, 3], [11, 3], [24, 3], 
	  [184, 2], [185, 2], [186, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[31, 70], [32, 70], [33, 70], [34, 70], [41, 120]]
	end

	def setup49 # Yeti 01
    @small_bar_type = 1
    @survival_scaling_level = 30
    @survival_scaling_hp_value = 14
	  @base_hyper_max = 16
	  @resist_states = [0, 0, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, -100, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [254]
	  @quickskill_id = [255, 256]
	  @spellcard_id = [257]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 14], [1, 5], [2, 3], [11, 3], 
    [187, 4], [188, 2], [189, 1], [191, 2]]
	  @casting_action_set = [[0, 2], [1, 1]]
	  @hyper_action_set = [[0, 8], [1, 5], [5, 3], [11, 3], 
    [187, 4], [188, 2], [190, 2], [191, 2]]
	  @drop_list = [[2016, 18], [2, 150], [3, 50], [12, 80], [21, 40], [41, 80]]
	end

	def setup50 # Sanae A
	  @face_name = "Sanae"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @boss_bar_drop_list = [41, 41, 21, 41, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [258]
	  @quickskill_id = [259, 260, 261, 262]
	  @spellcard_id = [263]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 2], [4, 2], [9, 2], [13, 2], [20, 2], [25, 2], [27, 2], 
    [192, 4], [193, 1], [194, 1], [195, 2], [196, 1], [197, 1]]
	  @casting_action_set = [[0, 2], [21, 2], [13, 2], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup51 # Pentagram 01
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [264]
	  @action_frequency = 30
	  @base_action_set = [[0, 4], [198, 1]]
	end

	def setup52 # Pentagram 02
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [265]
	  @action_frequency = 30
	  @base_action_set = [[0, 4], [199, 1]]
	end

	def setup53 # Wyvern 02
    @small_bar_type = 1
    @survival_scaling_level = 30
    @survival_scaling_hp_value = 18
	  @base_cast_speed = 70
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @max_attacks = 1
	  @combo_attack_id = [266]
	  @quickskill_id = [267, 268]
	  @spellcard_id = [269, 270]
	  @spellcard_casting_value = [10, 8]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [4, 4], [11, 4], [16, 2], [25, 3], 
	  [200, 4], [201, 2], [202, 3], [203, 1], [204, 1]]
	  @casting_action_set = [[0, 2], [13, 2], [16, 1], [29, 3]]
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [3, 45], [12, 80], [21, 60], [41, 80], [51, 50]]
	end

	def setup54 # Leviathan 01
    @small_bar_type = 2
    @survival_scaling_level = 30
    @survival_scaling_hp_value = 30
	  @base_cast_speed = 80
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 50, 50, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [271]
	  @quickskill_id = [272, 273]
	  @spellcard_id = [274, 275]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [2, 2], [3, 3], [8, 2], [11, 4], [16, 2], [24, 3], 
	  [205, 2], [206, 2], [207, 1], [208, 1], [209, 1]]
	  @casting_action_set = [[0, 3], [13, 2], [16, 1], [29, 2]]
	  @hyper_action_set = []
	  @drop_list = [[3, 150], [13, 50], [22, 50], [41, 150]]
	end

	def setup55 # Suwako A
	  @face_name = "Suwako"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 7
	  @boss_bar_drop_list = [11, 41, 11, 41, 11, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 50, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [276, 277]
	  @quickskill_id = [278, 279, 280, 281]
	  @spellcard_id = [282, 283]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [3, 10], [8, 5], [9, 3], [11, 3], [13, 4], [27, 3],
    [210, 5], [211, 2], [212, 3], [213, 3], [214, 2], [215, 1], [216, 1]]
	  @casting_action_set = [[0, 2], [20, 1], [25, 1], [27, 1]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup56 # Frog 01
	  @base_elem_resist = [0, -100, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [284]
	  @quickskill_id = [285]
	  @action_frequency = 40
	  @base_action_set = [[0, 5], [2, 4], [11, 7], [24, 7], 
    [217, 4], [218, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[41, 100]]
	end

	def setup57 # Sunflower_Fairy 02
    @survival_scaling_level = 34
    @survival_scaling_hp_value = 5
	  @base_guard_max = 1500
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, 0, -100, 50]
	  @max_attacks = 1
	  @combo_attack_id = [286]
	  @quickskill_id = [287]
	  @spellcard_id = [288]
	  @spellcard_casting_value = [10]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [1, 3], [4, 2], [10, 2], [25, 1], 
	  [219, 3], [220, 2], [221, 2]]
	  @casting_action_set = [[0, 1], [13, 2], [20, 3], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[2061, 10], [2, 150], [3, 40], [12, 70], [31, 50], [51, 50]]
	end

	def setup58 # Beetle Youkai 01
    @survival_scaling_level = 34
    @survival_scaling_hp_value = 5
	  @base_guard_max = 3500
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, 0, 0, 50]
	  @max_attacks = 1
	  @combo_attack_id = [289]
	  @quickskill_id = [290, 291]
	  @action_frequency = 40
	  @base_action_set = [[0, 4], [1, 3], [3, 2], [11, 2], [21, 5], [23, 5], 
	  [222, 3], [223, 2], [224, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 270], [12, 70], [33, 70], [41, 40]]
	end

	def setup59 # One_Eye_Bat 02
    @survival_scaling_level = 34
    @survival_scaling_hp_value = 2
	  @base_elem_resist = [0, 0, 0, -100, 50]
	  @max_attacks = 1
	  @combo_attack_id = [292]
	  @quickskill_id = [293]
	  @action_frequency = 20
	  @base_action_set = [[0, 6], [1, 3], [2, 4], [9, 2], [11, 5], [16, 2], [25, 3], 
	  [225, 4], [226, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [41, 30]]
	end

	def setup60 # Slime 02
    @survival_scaling_level = 34
    @survival_scaling_hp_value = 3
	  @base_elem_resist = [0, 50, -100, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [294]
	  @quickskill_id = [295, 296]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [2, 5], [3, 3], [11, 3], [24, 3], 
	  [227, 1], [228, 1], [229, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[31, 50], [32, 50], [33, 50], [34, 40]]
	end

	def setup61 # Caterpillar 01
    @small_bar_type = 1
    @survival_scaling_level = 36
    @survival_scaling_hp_value = 8
	  @base_elem_resist = [0, -100, 0, 0, 50]
	  @max_attacks = 1
	  @combo_attack_id = [297]
	  @quickskill_id = [298, 299]
	  @spellcard_id = [300]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [4, 4], [11, 3], [24, 3], [25, 3], 
	  [230, 2], [231, 1], [232, 1], [233, 2]]
	  @casting_action_set = [[0, 5], [25, 3]]
	  @hyper_action_set = []
	  @drop_list = [[1026, 15], [2, 220], [3, 40], [12, 40], [22, 40], [41, 50]]
	end

	def setup62 # Bonefish 01a
	  @base_elem_resist = [0, 0, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [301]
	  @quickskill_id = [302]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [4, 4], [11, 3], [15, 2], [26, 2], 
	  [234, 3], [235, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 220], [12, 80]]
	end

	def setup63 # Round Fish 01
	  @base_elem_resist = [0, -100, 50, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [303]
	  @quickskill_id = [304]
	  @action_frequency = 40
	  @base_action_set = [[0, 5], [2, 4], [7, 2], [9, 2], [16, 1], [24, 2], [25, 2],
	  [236, 3], [237, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [32, 60], [41, 40], [51, 60]]
	end

	def setup64 # Yin Yang 07
	  @immortal = true
	  @lifespan = 1080
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [305]
	  @action_frequency = 10
	  @base_action_set = [[238, 1]]
	end

	def setup65 # Yin Yang 08
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [306]
	  @quickskill_id = [307]
	  @action_frequency = 60
	  @base_action_set = [[239, 5], [240, 1]]
	end

	def setup66 # Suika A
	  @face_name = "Suika"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @boss_bar_drop_list = [32, 41, 12, 41, 32]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [308, 309]
	  @quickskill_id = [310, 311, 312, 313]
	  @spellcard_id = [314, 315]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [2, 4], [3, 3], [7, 2], [11, 2], [13, 3], [24, 2], [25, 2], 
	  [241, 2], [242, 2], [243, 3], [244, 3], [246, 1], [247, 1], [248, 1]]
	  @casting_action_set = [[0, 1], [25, 1], [27, 2]]
	  @hyper_action_set = [[0, 5], [1, 4], [5, 3], [6, 3], [9, 1], [13, 2], 
	  [241, 5], [242, 3], [243, 3], [244, 6], [245, 10], [247, 1], [248, 1]]
	  @drop_list = []
	end

	def setup67 # Stone Youkai 01
    @small_bar_type = 1
    @survival_scaling_level = 38
    @survival_scaling_hp_value = 12
	  @base_guard_max = 2700
	  @base_cast_speed = 40
	  @resist_states = [0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 50, 0, -100, 50]
	  @max_attacks = 1
	  @combo_attack_id = [316]
	  @quickskill_id = [317]
	  @spellcard_id = [318, 319]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [2, 3], [3, 2], [11, 2], [20, 3], 
	  [249, 3], [250, 3], [251, 1], [252, 2]]
	  @casting_action_set = [[23, 1]]
	  @hyper_action_set = []
	  @drop_list = [[2038, 18], [3, 120], [22, 100], [41, 70], [52, 30]]
	end

	def setup68 # Rock Thrower 01
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [320]
    @ignore_enemy_defense_prob = 100
	  @action_frequency = 1
	  @base_action_set = [[253, 1]]
	end

	def setup69 # Rock Thrower 02
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [321]
    @ignore_enemy_defense_prob = 100
	  @action_frequency = 1
	  @base_action_set = [[254, 1]]
	end

	def setup70 # Beetle Youkai Special
    @small_bar_type = 1
	  @base_guard_max = 2000
	  @base_cast_speed = 100
	  @base_maxhp_bar = 3
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 50]
	  @max_attacks = 1
	  @combo_attack_id = [289]
	  @quickskill_id = [290, 291, 322, 323]
	  @action_frequency = 40
	  @base_action_set = [[0, 4], [1, 4], [3, 3], [11, 2], [21, 5], [23, 5], 
	  [222, 3], [223, 3], [224, 2], [255, 2], [256, 12]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup71 # Great Bull 01
    @small_bar_type = 2
    @survival_scaling_level = 38
    @survival_scaling_hp_value = 25
	  @base_cast_speed = 80
	  @base_elem_resist = [0, 50, -100, 50, 50]
	  @max_attacks = 1
	  @combo_attack_id = [324]
	  @quickskill_id = [325, 326]
	  @spellcard_id = [327]
	  @spellcard_casting_value = [10]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [4, 4], [11, 4], [16, 2], [25, 3], 
	  [257, 3], [258, 2], [259, 2], [260, 2]]
	  @casting_action_set = [[0, 2], [11, 2], [25, 2], [29, 1]]
	  @hyper_action_set = []
	  @drop_list = [[3, 150], [12, 100], [13, 60], [41, 100], [51, 50]]
	end

	def setup72 # Shadow Marisa
	  @face_name = "Shadow_Marisa"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 4
	  @boss_bar_drop_list = [41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [328, 329]
	  @quickskill_id = [330, 331, 332, 333, 334]
	  @action_frequency = 30
	  @base_action_set = [[0, 8], [1, 4], [3, 3], [9, 2], [11, 3], [20, 3], 
	  [261, 5], [262, 3], [263, 1], [264, 2], [265, 2], [266, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup73 # Flaming Dragon 01
    @small_bar_type = 2
    @survival_scaling_level = 39
    @survival_scaling_hp_value = 30
	  @base_cast_speed = 80
	  @resist_states = [50, 100, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 50, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [335]
	  @quickskill_id = [336, 337]
	  @spellcard_id = [338, 339]
	  @spellcard_casting_value = [15, 10]
	  @action_frequency = 40
	  @base_action_set = [[0, 8], [2, 7], [7, 3], [11, 4], [16, 2], [26, 3], 
	  [267, 6], [268, 3], [269, 3], [270, 2], [271, 2]]
	  @casting_action_set = [[0, 2], [11, 2], [16, 1], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[3, 80], [4, 30], [12, 80], [21, 80], [41, 120]]
	end

	def setup74 # Utsuho A
	  @face_name = "Utsuho"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 7
	  @boss_bar_drop_list = [41, 31, 41, 41, 32, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [340]
	  @quickskill_id = [341, 342, 343, 344]
	  @spellcard_id = [345, 346]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [2, 4], [3, 7], [8, 5], [9, 2], [11, 3], [13, 2], [27, 2],
    [272, 5], [273, 3], [274, 2], [275, 2], [276, 2], [277, 2], [278, 2]]
	  @casting_action_set = [[0, 2], [20, 1], [25, 1], [27, 1]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup75 # Ghost_Fairy 01
    @survival_scaling_level = 40
    @survival_scaling_hp_value = 5
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, 0, -100, 0]
	  @max_attacks = 1
	  @combo_attack_id = [347]
	  @quickskill_id = [348, 349]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [3, 3], [8, 2], [11, 2], [16, 1], [25, 3], 
	  [279, 3], [280, 1], [281, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 100], [3, 60], [11, 200], [41, 40], [51, 70]]
	end

	def setup76 # Little Fairy 03
    @survival_scaling_level = 40
    @survival_scaling_hp_value = 4
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @quickskill_id = [350, 351, 352]
	  @action_frequency = 40
	  @base_action_set = [[0, 8], [4, 5], [13, 3], [15, 1], [25, 3], [29, 3], 
	  [282, 2], [283, 2], [284, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 140], [3, 80], [21, 200], [22, 50], [31, 50], [41, 30]]
	end

	def setup77 # Hollow 01
    @survival_scaling_level = 40
    @survival_scaling_hp_value = 4
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, 0, -100, 50]
	  @max_attacks = 1
	  @combo_attack_id = [353]
	  @quickskill_id = [354, 355]
	  @action_frequency = 40
	  @base_action_set = [[0, 10], [2, 6], [4, 4], [11, 4], [16, 2], [26, 4], 
	  [285, 5], [286, 2], [287, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [41, 150]]
	end

	def setup78 # Yin Yang 09
	  @immortal = true
	  @lifespan = 180
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [356]
	  @action_frequency = 1
	  @base_action_set = [[288, 1]]
	end

	def setup79 # Shinigami 01
    @small_bar_type = 1
    @survival_scaling_level = 40
    @survival_scaling_hp_value = 10
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, -100, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [357]
	  @quickskill_id = [358]
	  @spellcard_id = [359, 360]
	  @spellcard_casting_value = [10, 8]
	  @action_frequency = 30
	  @base_action_set = [[0, 10], [2, 8], [4, 5], [11, 5], [16, 3], [24, 6], 
	  [289, 5], [290, 1], [291, 1], [292, 1]]
	  @casting_action_set = [[0, 1], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[2027, 15], [3, 130], [12, 100], [21, 100], [32, 40], [51, 60]]
	end

	def setup80 # Shinigami's Orb 01
    @survival_scaling_level = 40
    @survival_scaling_hp_value = 5
	  @base_cast_speed = 100
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [361]
	  @action_frequency = 10
	  @base_action_set = [[293, 1]]
	end

	def setup81 # Ethereal Shinigami 01
    @small_bar_type = 1
	  @base_cast_speed = 100
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @max_attacks = 1
	  @combo_attack_id = [362]
	  @quickskill_id = [363]
	  @spellcard_id = [364]
	  @spellcard_casting_value = [8]
	  @action_frequency = 30
	  @base_action_set = [[0, 12], [2, 8], [4, 5], [8, 4], [11, 5], [16, 3], [24, 6], 
	  [294, 4], [295, 1], [296, 1]]
	  @casting_action_set = [[0, 1], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[2073, 13], [41, 200]]
	end

	def setup82 # Skeleton 01
    @survival_scaling_level = 42
    @survival_scaling_hp_value = 5
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 50, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [365]
	  @quickskill_id = [366, 367]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [2, 3], [3, 2], [9, 2], [11, 2], 
	  [297, 3], [298, 1], [299, 1]]
	  @casting_action_set = [[0, 1]]
	  @hyper_action_set = []
	  @drop_list = [[1, 150], [2, 120], [31, 70], [34, 40], [41, 50]]
	end

	def setup83 # Werewolf 01
    @small_bar_type = 1
    @survival_scaling_level = 42
    @survival_scaling_hp_value = 14
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, 0, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [368]
	  @quickskill_id = [369, 370]
	  @spellcard_id = [371]
	  @spellcard_casting_value = [8]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [2, 7], [4, 5], [8, 3], [11, 4], 
	  [300, 3], [301, 1], [302, 2], [303, 1]]
	  @casting_action_set = [[0, 1], [25, 1], [28, 1]]
	  @hyper_action_set = []
	  @drop_list = [[3, 150], [12, 100], [13, 40], [41, 70], [51, 80]]
	end

	def setup84 # Ethereal Werewolf 01
    @small_bar_type = 1
	  @base_cast_speed = 100
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @max_attacks = 1
	  @combo_attack_id = [372]
	  @quickskill_id = [373, 374]
	  @spellcard_id = [375]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [2, 7], [4, 5], [8, 5], [11, 4], 
	  [304, 3], [305, 1], [306, 2], [307, 1]]
	  @casting_action_set = [[0, 1], [25, 1], [28, 1]]
	  @hyper_action_set = []
	  @drop_list = [[2073, 15], [41, 250]]
	end

	def setup85 # Death Mage 01
    @small_bar_type = 1
    @survival_scaling_level = 44
    @survival_scaling_hp_value = 10
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @max_attacks = 1
	  @combo_attack_id = [376]
	  @quickskill_id = [377, 378]
	  @spellcard_id = [379, 380]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 8], [4, 6], [9, 3], [13, 3], [14, 2], [26, 3], [27, 3], 
	  [308, 5], [309, 2], [310, 1], [311, 1], [312, 2]]
	  @casting_action_set = [[0, 2], [26, 3], [27, 2]]
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [3, 80], [21, 140], [22, 60], [41, 60]]
	end

	def setup86 # Poisonous Tree 01
    @small_bar_type = 1
    @survival_scaling_level = 45
    @survival_scaling_hp_value = 18
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @resist_states = [100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, -100, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [381]
	  @quickskill_id = [382, 383]
	  @spellcard_id = [384]
	  @spellcard_casting_value = [7]
	  @action_frequency = 30
	  @base_action_set = [[0, 4], [3, 5], [7, 3], [11, 2], [13, 2], [20, 3], 
	  [313, 4], [314, 3], [315, 1], [316, 2]]
	  @casting_action_set = [[0, 1], [23, 2]]
	  @hyper_action_set = []
	  @drop_list = [[1047, 22], [3, 100], [4, 40], [12, 60], [22, 60], [31, 60], [52, 60]]
	end

	def setup87 # Ethereal Poisonous Tree 01
    @small_bar_type = 1
	  @base_guard_max = 750
	  @base_cast_speed = 100
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @max_attacks = 1
	  @combo_attack_id = [385]
	  @quickskill_id = [386, 387]
	  @spellcard_id = [388]
	  @spellcard_casting_value = [7]
	  @action_frequency = 30
	  @base_action_set = [[0, 4], [3, 5], [7, 3], [8, 3], [11, 2], [13, 2], [20, 3], 
	  [317, 4], [318, 3], [319, 1], [320, 2]]
	  @casting_action_set = [[0, 1], [23, 2]]
	  @hyper_action_set = []
	  @drop_list = [[2073, 18], [41, 300]]
	end

	def setup88 # Shadow Reimu
	  @face_name = "Shadow_Reimu"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 4
	  @boss_bar_drop_list = [41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [389, 390]
	  @quickskill_id = [391, 392, 393, 394, 395]
	  @action_frequency = 30
	  @base_action_set = [[0, 8], [2, 4], [3, 3], [5, 2], [9, 2], [11, 3], [20, 2], 
	  [321, 3], [322, 2], [323, 1], [324, 2], [325, 1], [326, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup89 # Youmu A
	  @face_name = "Youmu"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @base_hyper_max = 28
	  @boss_bar_drop_list = [12, 41, 41, 41, 11]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [396, 397]
	  @quickskill_id = [398, 399, 400, 401, 402]
	  @spellcard_id = [403]
	  @spellcard_casting_value = [8]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [1, 3], [2, 3], [5, 2], [7, 2], [9, 2], [13, 2], 
	  [327, 4], [328, 3], [329, 5], [330, 4], [331, 2], [332, 1], [334, 1]]
	  @casting_action_set = [[0, 2], [9, 3], [13, 2], [20, 2], [27, 2]]
	  @hyper_action_set = [[0, 5], [1, 3], [5, 3], [7, 2], [9, 3], [13, 2], 
	  [327, 5], [328, 4], [329, 7], [330, 5], [331, 3], [333, 6], [334, 1]]
	  @drop_list = []
	end

	def setup90 # Youmu B
	  @face_name = "Youmu"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 2
	  @base_hyper_max = 28
	  @boss_bar_drop_list = [41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [396, 397]
	  @quickskill_id = [398, 399, 400, 401, 402]
	  @spellcard_id = [403]
	  @spellcard_casting_value = [8]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [1, 3], [2, 3], [5, 2], [7, 2], [9, 2], [13, 2], 
	  [327, 4], [328, 3], [329, 5], [330, 4], [331, 2], [335, 1]]
	  @casting_action_set = [[0, 2], [9, 3], [13, 2], [20, 2], [27, 2]]
	  @hyper_action_set = [[0, 5], [1, 3], [5, 3], [7, 2], [9, 3], [13, 2], 
	  [327, 5], [328, 4], [329, 7], [330, 5], [331, 3], [333, 6]]
	  @drop_list = []
	end

	def setup91 # Youmu Rush 01
	  @immortal = true
	  @max_attacks = 1
	  @quickskill_id = [404, 405]
	  @action_frequency = 240
	  @base_action_set = [[336, 1], [337, 1]]
	end

	def setup92 # Yuyuko
	  @face_name = "Yuyuko"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 7
	  @boss_bar_drop_list = [41, 41, 12, 21, 41, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [406]
	  @quickskill_id = [407, 408, 409, 410, 411]
	  @spellcard_id = [412, 413]
	  @spellcard_casting_value = [8, 8]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [2, 3], [4, 2], [7, 2], [11, 2], [20, 2], [26, 2],  
	  [338, 3], [339, 2], [340, 2], [341, 2], [342, 1], [343, 1], [344, 1], [345, 1]]
	  @casting_action_set = [[0, 2], [13, 2], [20, 3], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup93 # Yuyuko Resuurection
	  @face_name = "Yuyuko"
	  @immortal = true
	  @base_guard_max = 1000
	  @base_cast_speed = 1000000
	  @boss = true
	  @base_maxhp_bar = 1
	  @boss_bar_drop_list = []
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @spellcard_id = [414, 415, 416]
	  @spellcard_casting_value = [10, 10, 10]
	  @action_frequency = 1
	  @base_action_set = [[346, 1], [347, 1], [348, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup94 # Reimu
	  @immortal = true
	end

	def setup95 # Sanae
	  @immortal = true
	end

	def setup96 # Yukari
	  @immortal = true
	end

	def setup97 # Fairy 01a
	  @base_elem_resist = [0, 0, 50, -100, 0]
	  @max_attacks = 1
	  @combo_attack_id = [104]
	  @quickskill_id = [105, 106]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [3, 4], [11, 2], [24, 4], 
	  [33, 3], [34, 2], [35, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[11, 120], [12, 60], [21, 60], [41, 40]]
	end

	def setup98 # Sunflower_Fairy 01a
	  @base_guard_max = 2000
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 50, 0, -100, 0]
	  @max_attacks = 1
	  @combo_attack_id = [134]
	  @quickskill_id = [135]
	  @spellcard_id = [136]
	  @spellcard_casting_value = [10]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [1, 3], [4, 2], [10, 2], [20, 3], [25, 1], 
	  [63, 3], [64, 2], [65, 2]]
	  @casting_action_set = [[13, 2], [20, 2], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[11, 120], [12, 60], [21, 60], [41, 40]]
	end

	def setup99 # Fairy 02a
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @max_attacks = 1
	  @combo_attack_id = [229]
	  @quickskill_id = [230, 231]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [3, 4], [9, 2], [11, 3], [15, 1], [24, 2], 
	  [162, 2], [163, 1], [164, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[11, 120], [12, 60], [21, 60], [41, 40]]
	end

	def setup100 # Sunflower_Fairy 02a
	  @base_guard_max = 1500
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, 0, -100, 50]
	  @max_attacks = 1
	  @combo_attack_id = [286]
	  @quickskill_id = [287]
	  @spellcard_id = [288]
	  @spellcard_casting_value = [10]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [1, 3], [4, 2], [10, 2], [25, 1], 
	  [219, 3], [220, 2], [221, 2]]
	  @casting_action_set = [[0, 1], [13, 2], [20, 3], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[11, 120], [12, 60], [21, 60], [41, 40]]
	end

	def setup101 # Lizard Youkai 01a
    @small_bar_type = 1
	  @base_hyper_max = 16
	  @resist_states = [50, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [161]
	  @quickskill_id = [162, 163, 164]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [3, 4], [91, 3], [92, 2], [94, 1], [95, 1]]
	  @casting_action_set = []
	  @hyper_action_set = [[0, 3], [2, 5], [91, 3], [92, 2], [93, 5], [94, 2]]
	  @drop_list = [[12, 100], [13, 50], [41, 80], [51, 40]]
	end

	def setup102 # Fire Beast 01a
    @small_bar_type = 1
	  @base_elem_resist = [0, 50, -100, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [181]
	  @quickskill_id = [182, 183]
	  @spellcard_id = [184]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [3, 4], [8, 3], [11, 3], [25, 3], 
	  [110, 3], [111, 2], [112, 2], [113, 2]]
	  @casting_action_set = [[0, 4], [11, 2], [24, 3]]
	  @hyper_action_set = []
	  @drop_list = [[12, 80], [13, 40], [41, 60], [51, 30]]
	end

	def setup103 # Shadow Fairy 01
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [417]
	  @quickskill_id = [418]
	  @spellcard_id = [419]
	  @spellcard_casting_value = [8]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [3, 4], [11, 2], [24, 4], 
	  [349, 3], [350, 2], [351, 1]]
	  @casting_action_set = [[0, 2], [9, 3], [13, 2]]
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [3, 40], [12, 140], [33, 30], [41, 40]]
	end

	def setup104 # Shadow Doll 01
	  @max_attacks = 1
	  @combo_attack_id = [420]
	  @quickskill_id = [421, 422]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [3, 2], [4, 3], [9, 1], [10, 3], [25, 2], [27, 1], 
    [352, 2], [353, 3], [354, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 200], [2, 100], [11, 100]]
	end

	def setup105 # Shadow Three-Tails Fox 01
	  @max_attacks = 1
	  @combo_attack_id = [423]
	  @quickskill_id = [424, 425]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [3, 3], [8, 2], [10, 2], 
    [355, 3], [356, 3], [357, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2046, 10], [2, 150], [3, 70], [12, 60], [41, 40]]
	end

	def setup106 # Shadow Snow Youkai 01
	  @max_attacks = 1
	  @combo_attack_id = [426]
	  @quickskill_id = [427, 428]
	  @action_frequency = 20
	  @base_action_set = [[0, 12], [1, 3], [2, 2], [5, 2], [7, 3], [9, 2], [13, 3], 
    [358, 5], [359, 1], [360, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 200], [3, 70], [12, 70], [41, 50], [51, 60]]
	end

	def setup107 # Shadow Fire Beast 01
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [429]
	  @quickskill_id = [430, 431]
	  @spellcard_id = [432]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [3, 4], [8, 3], [11, 3], [25, 3], 
	  [361, 3], [362, 2], [363, 3], [364, 1]]
	  @casting_action_set = [[0, 4], [11, 2], [24, 3]]
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [3, 110], [12, 80], [32, 60], [41, 60]]
	end

	def setup108 # Shadow Wyvern 01
    @small_bar_type = 1
	  @base_hyper_max = 16
	  @base_cast_speed = 70
	  @max_attacks = 1
	  @combo_attack_id = [433]
	  @quickskill_id = [434, 435]
	  @spellcard_id = [436, 437]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [4, 4], [11, 4], [16, 2], [25, 3], 
	  [365, 5], [366, 2], [367, 3], [368, 1], [369, 1]]
	  @casting_action_set = [[0, 2], [13, 2], [16, 1], [29, 3]]
	  @hyper_action_set = [[0, 5], [2, 5], [6, 4], [9, 3], [13, 4], [16, 2], [25, 2], 
	  [370, 8], [366, 2], [367, 3], [368, 1]]
	  @drop_list = [[2075, 15], [3, 100], [4, 35], [13, 60], [22, 60], [41, 80], [52, 40]]
	end

	def setup109 # Shadow Alice 01
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [438]
	  @quickskill_id = [439, 440, 441]
	  @action_frequency = 30
	  @base_action_set = [[0, 9], [2, 4], [8, 3], [11, 3], [13, 2], 
	  [371, 4], [372, 3], [373, 2], [374, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1007, 20], [3, 180], [31, 60], [41, 80]]
	end

	def setup110 # Shadow Cirno 01
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [442]
	  @quickskill_id = [443, 444, 445]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 8], [8, 3], [11, 2], [13, 3], [27, 2], 
	  [375, 6], [376, 6], [377, 2], [378, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 180], [21, 60], [41, 80]]
	end

	def setup111 # Shadow Meiling 01
    @small_bar_type = 1
	  @max_attacks = 2
	  @combo_attack_id = [446, 447]
	  @quickskill_id = [448, 449, 450]
	  @action_frequency = 20
	  @base_action_set = [[0, 6], [1, 4], [4, 3], [6, 2], [9, 2], [11, 3], 
	  [379, 6], [380, 3], [381, 1], [382, 5]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 180], [32, 60], [41, 80]]
	end

	def setup112 # Shadow Aya 01
    @small_bar_type = 1
	  @base_guard_max = 1500
	  @max_attacks = 1
	  @combo_attack_id = [451]
	  @quickskill_id = [452, 453, 454]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [2, 2], [4, 4], [7, 6], [13, 3], [15, 2], 
	  [20, 4], [25, 3], [27, 4], 
	  [383, 4], [384, 2], [385, 2], [386, 5]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1027, 20], [3, 180], [12, 70], [41, 80]]
	end

	def setup113 # Shadow Utsuho 01
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [455]
	  @quickskill_id = [456, 457, 458]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [2, 4], [3, 7], [8, 5], [9, 2], [11, 3], [13, 2], [27, 2],
	  [387, 5], [388, 3], [389, 2], [390, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 180], [41, 80], [52, 50]]
	end

	def setup114 # Shadow Youmu 01
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [459]
	  @quickskill_id = [460, 461, 462]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [1, 3], [2, 3], [5, 2], [7, 2], [9, 2], [13, 2], 
	  [391, 4], [392, 3], [393, 5], [394, 4]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 180], [33, 60], [41, 80]]
	end

	def setup115 # Maid_Fairy 02
	  @base_guard_max = 1200
	  @base_elem_resist = [0, 0, 0, -100, 0]
	  @max_attacks = 1
	  @combo_attack_id = [463]
	  @quickskill_id = [464, 465]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [2, 1], [3, 3], [7, 1], [13, 2], [20, 2], 
	  [25, 2], [27, 2], [395, 2], [396, 2], [397, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2067, 12], [2, 120], [3, 70], [12, 90], [31, 50], [41, 40]]
	end

	def setup116 # Slime 03
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [466]
	  @quickskill_id = [467, 468]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [1, 3], [2, 2], [3, 3], [11, 3], [24, 2], 
	  [398, 2], [399, 1], [400, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[31, 50], [32, 50], [33, 50], [34, 40]]
	end

	def setup117 # Plush 01
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [469]
	  @quickskill_id = [470, 471]
	  @action_frequency = 25
	  @base_action_set = [[0, 8], [2, 2], [5, 2], [7, 3], [9, 2], [13, 3], [24, 2], [27, 2], 
	  [401, 3], [402, 3], [403, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 140], [3, 80], [41, 50], [51, 60], [52, 30]]
	end

	def setup118 # Centaur 01
    @small_bar_type = 1
	  @base_cast_speed = 100
	  @resist_states = [0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [472]
	  @quickskill_id = [473, 474]
	  @spellcard_id = [475]
	  @spellcard_casting_value = [10]
	  @action_frequency = 25
	  @base_action_set = [[0, 9], [3, 4], [9, 2], [11, 2], [25, 3], [27, 2],  
	  [404, 3], [405, 2], [406, 2], [407, 1]]
	  @casting_action_set = [[0, 2], [26, 2], [27, 2]]
	  @hyper_action_set = []
	  @drop_list = [[3, 100], [4, 50], [12, 60], [21, 60], [51, 60]]
	end

	def setup119 # Lizard Youkai 02
    @small_bar_type = 1
	  @base_hyper_max = 16
	  @resist_states = [0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [476]
	  @quickskill_id = [477, 478, 479]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [3, 4], [24, 2], 
    [408, 2], [409, 2], [411, 1], [412, 1]]
	  @casting_action_set = []
	  @hyper_action_set = [[0, 3], [2, 5], [408, 2], [409, 2], [410, 5], [411, 2]]
	  @drop_list = [[2007, 14], [4, 100], [12, 70], [13, 30], [32, 60], [41, 100]]
	end

	def setup120 # Yin Yang 10
	  @immortal = true
	  @quickskill_id = [480, 481, 482, 483, 484, 485]
	  @action_frequency = 420
	  @base_action_set = [[413, 1], [414, 1], [415, 1], [416, 1], [417, 1], [418, 1]]
	end

	def setup121 # Plush Special
	  @no_hp_bar = true
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [486]
	  @quickskill_id = [470, 471]
	  @action_frequency = 25
	  @base_action_set = [[0, 8], [2, 2], [5, 2], [7, 3], [9, 2], [13, 3], [24, 2], [27, 2], 
	  [401, 3], [402, 3], [403, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup122 # Shadow Reimu
    setup88
	end

	def setup123 # Shadow Marisa
    setup72
	end

	def setup124 # Shadow Sakuya
    setup37
	end

	def setup125 # Yukari
	  @face_name = "Yukari"
	  @base_guard_max = 700
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @base_hyper_max = 2000
	  @boss_bar_drop_list = [33, 32, 31, 0, 41, 41, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [487, 488]
	  @quickskill_id = [489, 490, 491, 492, 493]
	  @spellcard_id = [494, 495]
	  @spellcard_casting_value = [8, 6]
	  @action_frequency = 35
	  @base_action_set = [[0, 8], [2, 6], [4, 4], [7, 4], [11, 4], [20, 5], [26, 4],  
	  [419, 3], [420, 2], [421, 2], [422, 2], [423, 1], [424, 2], [425, 1], [427, 12]]
	  @casting_action_set = [[0, 3], [13, 2], [20, 2], [25, 2]]
	  @hyper_action_set = [[0, 8], [2, 6], [4, 4], [7, 4], [11, 4], [20, 5], [26, 4],  
	  [419, 3], [420, 2], [421, 2], [422, 2], [423, 1], [424, 2], [425, 1], [426, 2]]
	  @drop_list = []
	end
end