class Game_Enemy < Game_Battler

	def setup126 # Forest Youkai 01 Chaos
    @survival_scaling_level = 60
    @survival_scaling_hp_value = 5
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
	  @drop_list = [[2093, 6], [2, 200], [3, 60], [12, 100], [32, 20], [41, 20]]
	end

	def setup127 # Fairy 01 Chaos
    @survival_scaling_level = 60
    @survival_scaling_hp_value = 6
	  @base_elem_resist = [0, 0, 50, -100, 0]
	  @max_attacks = 1
	  @combo_attack_id = [104]
	  @quickskill_id = [105, 106]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [3, 4], [11, 2], [24, 4], 
	  [33, 3], [34, 2], [35, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2085, 5], [2, 250], [3, 50], [12, 100], [31, 20], [41, 30]]
	end

	def setup128 # Poisonous Flower 01 Chaos
    @survival_scaling_level = 60
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
	  @drop_list = [[2094, 6], [2, 200], [12, 50]]
	end

	def setup129 # Yin Yang 01 Chaos
	  setup4
	end

	def setup130 # Cirno Chaos
	  @face_name = "Cirno"
	  @base_guard_max = 800
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 2, 41, 2, 41, 2, 41]
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

	def setup131 # Haunted Tree 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 60
    @survival_scaling_hp_value = 22
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
	  @drop_list = [[2095, 10], [3, 250], [31, 100], [41, 100]]
	end

	def setup132 # Doll 01 Chaos
    @survival_scaling_level = 60
    @survival_scaling_hp_value = 5
	  @max_attacks = 1
	  @combo_attack_id = [120]
	  @quickskill_id = [121]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [1, 2], [3, 2], [4, 2], [10, 3], [50, 2], [51, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 100], [3, 40], [12, 80]]
	end

	def setup133 # Doll 02 Chaos
    @survival_scaling_level = 60
    @survival_scaling_hp_value = 5
	  @max_attacks = 1
	  @combo_attack_id = [122]
	  @quickskill_id = [123]
	  @action_frequency = 35
	  @base_action_set = [[0, 4], [4, 2], [10, 3], [13, 6], [26, 4], [28, 6], 
	  [52, 3], [53, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 120], [3, 50], [41, 60]]
	end
  
	def setup134 # Giant Flower 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 60
    @survival_scaling_hp_value = 18
	  @base_guard_max = 1400
	  @base_hyper_max = 12
	  @base_elem_resist = [0, -100, 0, 0, 0]
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [496]
	  @quickskill_id = [497, 498]
	  @action_frequency = 35
	  @base_action_set = [[21, 8], [428, 5], [429, 3], [430, 2], [431, 1]]
	  @casting_action_set = []
	  @hyper_action_set = [[0, 2], [432, 2], [433, 1]]
	  @drop_list = [[2072, 10], [3, 100], [4, 40], [31, 50], [41, 100]]
	end

	def setup135 # Alice A Chaos
	  @face_name = "Alice"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 12, 41, 22, 41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [124]
	  @quickskill_id = [125, 126, 499, 500, 129]
	  @spellcard_id = [130]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 9], [2, 4], [8, 3], [11, 3], [13, 2], 
	  [54, 4], [55, 3], [56, 2], [57, 3], [58, 2], [59, 2], [60, 3]]
	  @casting_action_set = [[13, 2], [23, 4], [29, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup136 # Cirno
	  @immortal = true
	end

	def setup137 # Three-Tails Fox 01 Chaos
    @survival_scaling_level = 65
    @survival_scaling_hp_value = 6
	  @base_elem_resist = [0, 0, -100, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [132]
	  @quickskill_id = [133]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [3, 3], [8, 2], [10, 2], [61, 3], [62, 5]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 130], [12, 70], [13, 20], [41, 30]]
	end

	def setup138 # Sunflower Fairy 01 Chaos
    @survival_scaling_level = 65
    @survival_scaling_hp_value = 6
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
	  @drop_list = [[2081, 6], [2, 220], [3, 60], [12, 100], [31, 30], [52, 20]]
	end

	def setup139 # Yin Yang 02 Chaos
	  @immortal = true
	  @lifespan = 900
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [137]
	  @action_frequency = 10
	  @base_action_set = [[66, 1]]
	end

	def setup140 # Yin Yang 03 Chaos
	  @immortal = true
	  @lifespan = 780
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [138]
	  @action_frequency = 10
	  @base_action_set = [[67, 1]]
	end

	def setup141 # Bonefish 01 Chaos
	  @base_elem_resist = [0, 0, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [139]
	  @quickskill_id = [140]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [4, 4], [11, 3], [15, 2], [26, 2], 
	  [68, 3], [69, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 300], [12, 80]]
	end

	def setup142 # Little Fairy 01 Chaos
    @survival_scaling_level = 65
    @survival_scaling_hp_value = 5
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @quickskill_id = [141, 142, 143]
	  @action_frequency = 40
	  @base_action_set = [[0, 8], [4, 5], [13, 3], [15, 2], [25, 3], [29, 3], 
	  [70, 4], [71, 3], [72, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 95], [21, 100], [22, 50], [31, 50], [41, 25]]
	end

	def setup143 # Reisen A Chaos
	  @face_name = "Reisen"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @base_hyper_max = 32
	  @boss_bar_drop_list = [12, 41, 3, 41, 31, 41, 12]
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

	def setup144 # Giant Squid 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 65
    @survival_scaling_hp_value = 12
	  @base_elem_resist = [0, 0, 50, 50, -100]
	  @max_attacks = 1
	  @combo_attack_id = [150]
	  @quickskill_id = [151]
	  @action_frequency = 40
	  @base_action_set = [[0, 4], [2, 6], [10, 2], [80, 2], [81, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2086, 9], [3, 160], [12, 80], [33, 30]]
	end

	def setup145 # Wyvern 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 65
    @survival_scaling_hp_value = 22
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
	  @drop_list = [[2085, 10], [3, 140], [4, 40], [31, 50], [32, 50], [33, 50], [41, 80]]
	end

	def setup146 # Shadow Cirno 01 Chaos
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [442]
	  @quickskill_id = [443, 444, 445]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 8], [8, 3], [11, 2], [13, 3], [27, 2], 
	  [375, 6], [376, 6], [377, 2], [378, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 200], [21, 60], [41, 80]]
	end

	def setup147 # Lizard Youkai 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 65
    @survival_scaling_hp_value = 18
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
	  @drop_list = [[2097, 10], [3, 210], [12, 100], [13, 30], [32, 60], [41, 120]]
	end

	def setup148 # Bonefish 02 Chaos
	  @base_elem_resist = [0, 50, 50, 50, -100]
	  @max_attacks = 1
	  @combo_attack_id = [501]
	  @quickskill_id = [502, 503]
	  @action_frequency = 40
	  @base_action_set = [[0, 9], [2, 2], [4, 4], [9, 2], [11, 3], [15, 2], [26, 2], [28, 2], 
	  [434, 3], [435, 2], [436, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2087, 9], [2, 140], [4, 40], [12, 80]]
	end

	def setup149 # Aya A Chaos
	  @face_name = "Aya"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 32, 41, 12, 41, 2, 41]
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

	def setup150 # Reisen
	  @immortal = true
	end

	def setup151 # Meiling A Chaos
	  @face_name = "Meiling"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
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

	def setup152 # Meiling B Chaos
	  @face_name = "Meiling"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 12, 41, 3, 41, 12, 41]
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

	def setup153 # Fire Beast 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 70
    @survival_scaling_hp_value = 12
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
	  @drop_list = [[2082, 8], [3, 180], [12, 130], [32, 50], [41, 60]]
	end

	def setup154 # Gargoyle 01 Chaos
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
	  @drop_list = [[4, 30], [41, 100], [52, 40]]
	end

	def setup155 # Maid_Fairy 01 Chaos
    @survival_scaling_level = 70
    @survival_scaling_hp_value = 6
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
	  @drop_list = [[2, 200], [3, 70], [12, 150], [31, 50], [41, 40]]
	end

	def setup156 # One_Eye_Bat 01 Chaos
    @survival_scaling_level = 70
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
	  @drop_list = [[1, 200], [2, 150], [41, 30]]
	end

	def setup157 # Yin Yang 04 Chaos
	  @immortal = true
	  @lifespan = 360
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [192]
	  @action_frequency = 10
	  @base_action_set = [[121, 1]]
	end

	def setup158 # Flying Book 01 Chaos
    @survival_scaling_level = 70
    @survival_scaling_hp_value = 5
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
	  @drop_list = [[2093, 6], [3, 120], [21, 100], [22, 40], [41, 30]]
	end

	def setup159 # Flying Book 02 Chaos
    @survival_scaling_level = 70
    @survival_scaling_hp_value = 5
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
	  @drop_list = [[2089, 6], [3, 120], [21, 100], [22, 40], [41, 30]]
	end

	def setup160 # Flying Book 03 Chaos
    @small_bar_type = 1
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @spellcard_id = [193, 194, 195, 196, 202]
	  @spellcard_casting_value = [20, 20, 20, 20, 6]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], 
	  [130, 1], [131, 1], [132, 1], [133, 1], [135, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 180], [22, 120], [41, 30]]
	end

	def setup161 # Ghost Book 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 70
    @survival_scaling_hp_value = 12
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
	  @drop_list = [[3, 100], [4, 25], [12, 70], [13, 30], [21, 50], [22, 50]]
	end

	def setup162 # Patchouli A Chaos
	  @face_name = "Patchouli"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 22, 41, 33, 41, 21, 41]
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

	def setup163 # Snake 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 70
    @survival_scaling_hp_value = 22
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
	  @drop_list = [[2090, 9], [2, 100], [3, 180], [12, 100], [32, 40], [41, 50]]
	end

	def setup164 # Shadow Sakuya Chaos
	  @face_name = "Shadow_Sakuya"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @boss_bar_drop_list = [41, 12, 41, 2, 41]
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

	def setup165 # Remilia A Chaos
	  @face_name = "Remilia"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 31, 41, 13, 41, 31, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [220]
	  @quickskill_id = [221, 222, 223, 224]
	  @spellcard_id = [507, 226]
	  @spellcard_casting_value = [15, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 8], [8, 3], [11, 2], [13, 3], [24, 2], [27, 2], 
	  [152, 6], [153, 2], [154, 2], [155, 2], [157, 2], [158, 1], [159, 1]]
	  @casting_action_set = [[0, 1], [21, 2], [27, 2]]
	  @hyper_action_set = [[0, 2], [3, 8], [7, 2], [8, 4], [11, 2], [13, 3], [24, 2], [27, 2], 
	  [152, 6], [153, 2], [154, 2], [155, 2], [156, 6]]
	  @drop_list = []
	end

	def setup166 # Remilia Clone Chaos
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

	def setup167 # Flandre A Chaos
	  @face_name = "Flandre"
	  @base_cast_speed = 50
	  @boss = true
	  @base_maxhp_bar = 2
	  @boss_bar_drop_list = [12]
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = []
	  @quickskill_id = []
	  @spellcard_id = [504, 505, 506]
	  @spellcard_casting_value = [10, 10, 10]
	  @action_frequency = 30
	  @base_action_set = [[437, 1], [438, 1], [439, 1]]
	  @casting_action_set = []
	  @hyper_action_set = [[437, 1], [438, 1], [439, 1]]
	end

	def setup168 # Flandre B Chaos
	  @face_name = "Flandre"
	  @base_cast_speed = 40
	  @boss = true
	  @base_maxhp_bar = 4
	  @base_hyper_max = 2000
	  @boss_bar_drop_list = [41, 13, 41]
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = []
	  @quickskill_id = []
	  @spellcard_id = [504, 505, 506]
	  @spellcard_casting_value = [10, 10, 10]
	  @action_frequency = 30
	  @base_action_set = [[437, 1], [438, 1], [439, 1]]
	  @casting_action_set = []
	  @hyper_action_set = [[437, 1], [438, 1], [439, 1]]
	end

	def setup169 # Remilia
	  @immortal = true
	end

	def setup170 # Fairy 02 Chaos
    @survival_scaling_level = 75
    @survival_scaling_hp_value = 6
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @max_attacks = 1
	  @combo_attack_id = [229]
	  @quickskill_id = [230, 231]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [3, 4], [9, 2], [11, 3], [15, 1], [24, 2], 
	  [162, 2], [163, 1], [164, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2089, 6], [2, 210], [3, 70], [12, 80], [41, 40], [51, 50]]
	end

	def setup171 # Little Fairy 02 Chaos
    @survival_scaling_level = 75
    @survival_scaling_hp_value = 5
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @quickskill_id = [232, 233, 234]
	  @action_frequency = 40
	  @base_action_set = [[0, 8], [4, 5], [13, 3], [15, 1], [25, 3], [29, 3], 
	  [165, 3], [166, 2], [167, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 100], [21, 200], [22, 50], [31, 50], [41, 30]]
	end

	def setup172 # Slime 01 Chaos
    @survival_scaling_level = 75
    @survival_scaling_hp_value = 4
	  @base_elem_resist = [0, 0, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [235]
	  @quickskill_id = [236, 514]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [2, 5], [3, 3], [11, 3], [24, 3], 
	  [168, 2], [169, 2], [170, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[31, 50], [32, 50], [33, 50], [34, 40]]
	end

	def setup173 # Slime 04 Chaos
	  @resist_states = [50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, -100, -100, -100, -100]
	  @max_attacks = 1
	  @combo_attack_id = [508]
	  @quickskill_id = [509, 510, 511]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [2, 5], [3, 3], [11, 3], [24, 3], 
	  [440, 2], [441, 2], [442, 1], [443, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[61, 1000]]
	end

	def setup174 # Ice Flower 01 Chaos
    @survival_scaling_level = 75
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
	  @drop_list = [[2086, 5], [2, 250], [12, 100], [41, 50]]
	end

	def setup175 # Yin Yang 05 Chaos
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [240]
	  @quickskill_id = [241]
	  @action_frequency = 15
	  @base_action_set = [[173, 8], [174, 1]]
	end

	def setup176 # Yin Yang 06 Chaos
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [242]
	  @quickskill_id = [243]
	  @action_frequency = 15
	  @base_action_set = [[175, 8], [176, 1]]
	end

	def setup177 # Shadow Aya 01 Chaos
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
	  @drop_list = [[3, 200], [12, 70], [41, 80]]
	end

	def setup178 # Snow Youkai 01 Chaos
    @survival_scaling_level = 75
    @survival_scaling_hp_value = 5
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
	  @drop_list = [[1, 200], [3, 100], [12, 100], [41, 50], [51, 40]]
	end

	def setup179 # Yeti 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 75
    @survival_scaling_hp_value = 17
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
	  @drop_list = [[2, 140], [3, 140], [12, 80], [21, 40], [41, 80]]
	end

	def setup180 # Sanae A Chaos
	  @face_name = "Sanae"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 31, 41, 21, 41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [258]
	  @quickskill_id = [259, 260, 261, 512]
	  @spellcard_id = [263]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 2], [4, 2], [9, 2], [13, 2], [20, 2], [25, 2], [27, 2], 
    [192, 4], [193, 1], [194, 1], [195, 2], [196, 1], [197, 1]]
	  @casting_action_set = [[0, 2], [21, 2], [13, 2], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup181 # Pentagram 01 Chaos
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [264]
	  @action_frequency = 30
	  @base_action_set = [[0, 4], [198, 1]]
	end

	def setup182 # Pentagram 02 Chaos
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [265]
	  @action_frequency = 30
	  @base_action_set = [[0, 4], [199, 1]]
	end

	def setup183 # Wyvern 02 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 75
    @survival_scaling_hp_value = 22
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
	  @drop_list = [[2090, 9], [3, 100], [4, 25], [12, 80], [21, 60], [41, 80], [52, 40]]
	end

	def setup184 # Leviathan 01 Chaos
    @small_bar_type = 2
    @survival_scaling_level = 75
    @survival_scaling_hp_value = 36
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
	  @drop_list = [[2091, 10], [4, 120], [13, 80], [22, 60], [41, 150]]
	end

	def setup185 # Suwako A Chaos
	  @face_name = "Suwako"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 41, 12, 41, 41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 50, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [276, 277]
	  @quickskill_id = [278, 279, 280, 513]
	  @spellcard_id = [282, 283]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [3, 10], [8, 5], [9, 3], [11, 3], [13, 4], [27, 3],
    [210, 5], [211, 2], [212, 3], [213, 3], [214, 2], [215, 1], [216, 1]]
	  @casting_action_set = [[0, 2], [20, 1], [25, 1], [27, 1]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup186 # Frog 01 Chaos
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

	def setup187 # Aya
	  @immortal = true
	end

	def setup188 # Sunflower_Fairy 02 Chaos
    @survival_scaling_level = 80
    @survival_scaling_hp_value = 6
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
	  @drop_list = [[2094, 6], [2, 150], [3, 90], [12, 70], [31, 50], [51, 50]]
	end

	def setup189 # Beetle Youkai 01 Chaos
    @survival_scaling_level = 80
    @survival_scaling_hp_value = 6
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
	  @drop_list = [[3, 145], [12, 70], [33, 70], [41, 40]]
	end

	def setup190 # One_Eye_Bat 02 Chaos
    @survival_scaling_level = 80
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
	  @drop_list = [[2, 240], [41, 30]]
	end

	def setup191 # Slime 02 Chaos
    @survival_scaling_level = 80
    @survival_scaling_hp_value = 4
	  @base_elem_resist = [0, 50, -100, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [294]
	  @quickskill_id = [295, 515]
	  @action_frequency = 40
	  @base_action_set = [[0, 7], [2, 5], [3, 3], [11, 3], [24, 3], 
	  [227, 1], [228, 1], [229, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[31, 50], [32, 50], [33, 50], [34, 40]]
	end

	def setup192 # Caterpillar 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 80
    @survival_scaling_hp_value = 10
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
	  @drop_list = [[2, 150], [3, 70], [4, 20], [12, 50], [22, 50], [41, 50]]
	end

	def setup193 # Bonefish 01a Chaos
	  @base_elem_resist = [0, 0, 50, 0, -100]
	  @max_attacks = 1
	  @combo_attack_id = [301]
	  @quickskill_id = [302]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [4, 4], [11, 3], [15, 2], [26, 2], 
	  [234, 3], [235, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 150], [4, 15], [12, 80]]
	end

	def setup194 # Round Fish 01 Chaos
	  @base_elem_resist = [0, -100, 50, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [303]
	  @quickskill_id = [304]
	  @action_frequency = 40
	  @base_action_set = [[0, 5], [2, 4], [7, 2], [9, 2], [16, 1], [24, 2], [25, 2],
	  [236, 3], [237, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 140], [32, 60], [41, 40], [52, 35]]
	end

	def setup195 # Yin Yang 07 Chaos
	  @immortal = true
	  @lifespan = 1080
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [305]
	  @action_frequency = 10
	  @base_action_set = [[238, 1]]
	end

	def setup196 # Yin Yang 08 Chaos
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [306]
	  @quickskill_id = [307]
	  @action_frequency = 60
	  @base_action_set = [[239, 5], [240, 1]]
	end

	def setup197 # Suika A Chaos
	  @face_name = "Suika"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 32, 41, 33, 41, 32, 41]
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

	def setup198 # Stone Youkai 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 80
    @survival_scaling_hp_value = 14
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
	  @drop_list = [[2095, 8], [3, 220], [22, 100], [41, 70], [52, 45]]
	end

	def setup199 # Rock Thrower 01 Chaos
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [320]
    @ignore_enemy_defense_prob = 100
	  @action_frequency = 1
	  @base_action_set = [[253, 1]]
	end

	def setup200 # Rock Thrower 02 Chaos
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [321]
    @ignore_enemy_defense_prob = 100
	  @action_frequency = 1
	  @base_action_set = [[254, 1]]
	end

	def setup201 # Great Bull 01 Chaos
    @small_bar_type = 2
    @survival_scaling_level = 80
    @survival_scaling_hp_value = 30
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
	  @drop_list = [[2082, 9], [3, 160], [4, 50], [12, 80], [13, 80], [41, 100], [52, 40]]
	end

	def setup202 # Shadow Marisa Chaos
	  @face_name = "Shadow_Marisa"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @boss_bar_drop_list = [41, 12, 41, 2, 41]
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

	def setup203 # Flaming Dragon 01 Chaos
    @small_bar_type = 2
    @survival_scaling_level = 80
    @survival_scaling_hp_value = 36
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
	  @drop_list = [[2083, 10], [4, 125], [12, 80], [21, 60], [22, 20], [41, 120]]
	end

	def setup204 # Utsuho A Chaos
	  @face_name = "Utsuho"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 31, 41, 12, 41, 32, 41]
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

	def setup205 # Rin Chaos
	  @immortal = true
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [516]
	  @quickskill_id = [517, 518, 519]
	  @spellcard_id = [520]
	  @spellcard_casting_value = [10]
	  @action_frequency = 60
	  @base_action_set = [[444, 6], [445, 1], [446, 2], [447, 5], [448, 1]]
	end

	def setup206 # Utsuho
	  @immortal = true
	end

	def setup207 # Ghost_Fairy 01 Chaos
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 6
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
	  @drop_list = [[2, 210], [3, 75], [12, 160], [41, 40], [51, 70]]
	end

	def setup208 # Little Fairy 03 Chaos
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 5
	  @base_elem_resist = [0, 50, 50, 50, 50]
	  @quickskill_id = [350, 351, 352]
	  @action_frequency = 40
	  @base_action_set = [[0, 8], [4, 5], [13, 3], [15, 1], [25, 3], [29, 3], 
	  [282, 2], [283, 2], [284, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 140], [3, 110], [21, 200], [22, 50], [31, 50], [41, 30]]
	end

	def setup209 # Hollow 01 Chaos
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 5
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
	  @drop_list = [[2097, 5], [2, 100], [3, 65], [41, 150]]
	end

	def setup210 # Yin Yang 09 Chaos
	  @immortal = true
	  @lifespan = 180
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [356]
	  @action_frequency = 1
	  @base_action_set = [[288, 1]]
	end

	def setup211 # Shinigami 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 12
	  @base_cast_speed = 100
	  @base_elem_resist = [0, 0, -100, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [357]
	  @quickskill_id = [358]
	  @spellcard_id = [521, 360]
	  @spellcard_casting_value = [10, 8]
	  @action_frequency = 30
	  @base_action_set = [[0, 10], [2, 8], [4, 5], [11, 5], [16, 3], [24, 6], 
	  [289, 5], [290, 1], [291, 1], [292, 1]]
	  @casting_action_set = [[0, 1], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = [[3, 110], [4, 25], [12, 100], [21, 100], [32, 40], [52, 40]]
	end

	def setup212 # Shinigami's Orb 01 Chaos
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 6
	  @base_cast_speed = 100
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [361]
	  @action_frequency = 10
	  @base_action_set = [[293, 1]]
	end

	def setup213 # Shinigami's Orb 02 Chaos
	  @base_cast_speed = 100
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [522]
	  @action_frequency = 10
	  @base_action_set = [[449, 1]]
	end

	def setup214 # Shinigami's Orb 03 Chaos
	  @base_cast_speed = 100
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [523]
	  @action_frequency = 300
	  @base_action_set = [[450, 1]]
	end

	def setup215 # Shinigami's Orb 04 Chaos
	  @base_cast_speed = 100
	  @resist_states = [100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0]
	  @immune_to_interruption = true
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [524]
	  @action_frequency = 60
	  @base_action_set = [[451, 1]]
	end

	def setup216 # Ethereal Shinigami 01 Chaos
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
	  @drop_list = [[2098, 6], [41, 200]]
	end

	def setup217 # Skeleton 01 Chaos
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 6
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
	  @drop_list = [[2, 160], [3, 80], [31, 70], [34, 40], [41, 50]]
	end

	def setup218 # Werewolf 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 17
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
	  @drop_list = [[3, 240], [12, 80], [13, 60], [41, 70], [52, 60]]
	end

	def setup219 # Ethereal Werewolf 01 Chaos
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
	  @drop_list = [[2098, 6], [41, 250]]
	end

	def setup220 # Death Mage 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 12
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
	  @drop_list = [[2091, 7], [3, 100], [4, 50], [21, 140], [22, 60], [41, 60]]
	end

	def setup221 # Poisonous Tree 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 85
    @survival_scaling_hp_value = 22
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
	  @drop_list = [[3, 130], [4, 60], [12, 60], [22, 60], [31, 60], [52, 70]]
	end

	def setup222 # Ethereal Poisonous Tree 01 Chaos
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
	  @drop_list = [[2098, 6], [41, 300]]
	end

	def setup223 # Shadow Reimu Chaos
	  @face_name = "Shadow_Reimu"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 6
	  @boss_bar_drop_list = [41, 12, 41, 12, 41]
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

	def setup224 # Youmu A Chaos
	  @face_name = "Youmu"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @base_hyper_max = 28
	  @boss_bar_drop_list = [41, 33, 41, 31, 41, 33, 41]
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

	def setup225 # Youmu B Chaos
	  @face_name = "Youmu"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 4
	  @base_hyper_max = 28
	  @boss_bar_drop_list = [41, 41, 41]
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

	def setup226 # Youmu Rush 01 Chaos
	  @immortal = true
	  @max_attacks = 1
	  @quickskill_id = [404, 405]
	  @action_frequency = 240
	  @base_action_set = [[336, 1], [337, 1]]
	end

	def setup227 # Yuyuko Chaos
	  @face_name = "Yuyuko"
	  @base_guard_max = 1000
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 12, 41, 22, 41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [406]
	  @quickskill_id = [407, 408, 409, 525, 411]
	  @spellcard_id = [412, 413]
	  @spellcard_casting_value = [8, 8]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [2, 3], [4, 2], [7, 2], [11, 2], [20, 2], [26, 2],  
	  [338, 3], [339, 2], [340, 2], [341, 2], [342, 1], [343, 1], [344, 1], [345, 1]]
	  @casting_action_set = [[0, 2], [13, 2], [20, 3], [25, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup228 # Yuyuko Resuurection Chaos
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

	def setup229 # Youmu
	  @immortal = true
	end

	def setup230 # Shadow Fairy 01 Chaos
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
	  @drop_list = [[2, 200], [3, 80], [12, 140], [33, 30], [41, 40]]
	end

	def setup231 # Shadow Doll 01 Chaos
	  @max_attacks = 1
	  @combo_attack_id = [420]
	  @quickskill_id = [421, 422]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [3, 2], [4, 3], [9, 1], [10, 3], [25, 2], [27, 1], 
    [352, 2], [353, 3], [354, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 160], [2, 250], [11, 100]]
	end

	def setup232 # Shadow Three-Tails Fox 01 Chaos
	  @max_attacks = 1
	  @combo_attack_id = [423]
	  @quickskill_id = [424, 425]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [3, 3], [8, 2], [10, 2], 
    [355, 3], [356, 3], [357, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [3, 100], [12, 60], [41, 40]]
	end

	def setup233 # Shadow Snow Youkai 01 Chaos
	  @max_attacks = 1
	  @combo_attack_id = [426]
	  @quickskill_id = [427, 428]
	  @action_frequency = 20
	  @base_action_set = [[0, 12], [1, 3], [2, 2], [5, 2], [7, 3], [9, 2], [13, 3], 
    [358, 5], [359, 1], [360, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[1, 150], [3, 115], [12, 70], [41, 50], [51, 60]]
	end

	def setup234 # Shadow Fire Beast 01 Chaos
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
	  @drop_list = [[2099, 7], [3, 140], [4, 30], [12, 80], [32, 60], [41, 60]]
	end

	def setup235 # Shadow Wyvern 01 Chaos
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
	  @drop_list = [[2099, 8], [3, 130], [4, 50], [13, 60], [22, 60], [41, 80], [52, 40]]
	end

	def setup236 # Shadow Alice 01 Chaos
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [438]
	  @quickskill_id = [439, 440, 526]
	  @action_frequency = 30
	  @base_action_set = [[0, 9], [2, 4], [8, 3], [11, 3], [13, 2], 
	  [371, 4], [372, 3], [373, 2], [374, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 140], [4, 40], [31, 60], [41, 80]]
	end

	def setup237 # Shadow Cirno 01 Chaos
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [442]
	  @quickskill_id = [443, 444, 445]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [3, 8], [8, 3], [11, 2], [13, 3], [27, 2], 
	  [375, 6], [376, 6], [377, 2], [378, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 140], [4, 40], [21, 60], [41, 80]]
	end

	def setup238 # Shadow Meiling 01 Chaos
    @small_bar_type = 1
	  @max_attacks = 2
	  @combo_attack_id = [446, 447]
	  @quickskill_id = [448, 449, 450]
	  @action_frequency = 20
	  @base_action_set = [[0, 6], [1, 4], [4, 3], [6, 2], [9, 2], [11, 3], 
	  [379, 6], [380, 3], [381, 1], [382, 5]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 140], [4, 40], [32, 60], [41, 80]]
	end

	def setup239 # Shadow Aya 01 Chaos
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
	  @drop_list = [[3, 140], [4, 40], [12, 70], [41, 80]]
	end

	def setup240 # Shadow Utsuho 01 Chaos
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [455]
	  @quickskill_id = [456, 457, 458]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [2, 4], [3, 7], [8, 5], [9, 2], [11, 3], [13, 2], [27, 2],
	  [387, 5], [388, 3], [389, 2], [390, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 140], [4, 40], [41, 80], [52, 50]]
	end

	def setup241 # Shadow Youmu 01 Chaos
    @small_bar_type = 1
	  @max_attacks = 1
	  @combo_attack_id = [459]
	  @quickskill_id = [460, 461, 462]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [1, 3], [2, 3], [5, 2], [7, 2], [9, 2], [13, 2], 
	  [391, 4], [392, 3], [393, 5], [394, 4]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 140], [4, 40], [33, 60], [41, 80]]
	end

	def setup242 # Maid_Fairy 02 Chaos
    @survival_scaling_level = 90
    @survival_scaling_hp_value = 6
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
	  @drop_list = [[2, 140], [3, 100], [12, 90], [31, 50], [41, 40]]
	end

	def setup243 # Slime 03 Chaos
    @survival_scaling_level = 90
    @survival_scaling_hp_value = 4
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [466]
	  @quickskill_id = [467, 527]
	  @action_frequency = 40
	  @base_action_set = [[0, 6], [1, 3], [2, 2], [3, 3], [11, 3], [24, 2], 
	  [398, 2], [399, 1], [400, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[31, 50], [32, 50], [33, 50], [34, 40]]
	end

	def setup244 # Plush 01 Chaos
    @survival_scaling_level = 90
    @survival_scaling_hp_value = 10
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 1
	  @combo_attack_id = [469]
	  @quickskill_id = [470, 471]
	  @action_frequency = 25
	  @base_action_set = [[0, 8], [2, 2], [5, 2], [7, 3], [9, 2], [13, 3], [24, 2], [27, 2], 
	  [401, 3], [402, 3], [403, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 150], [3, 130], [41, 50], [51, 60], [52, 30]]
	end

	def setup245 # Centaur 01 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 90
    @survival_scaling_hp_value = 14
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
	  @drop_list = [[2087, 8], [3, 120], [4, 60], [12, 60], [21, 60], [51, 60]]
	end

	def setup246 # Lizard Youkai 02 Chaos
    @small_bar_type = 1
    @survival_scaling_level = 90
    @survival_scaling_hp_value = 18
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
	  @drop_list = [[4, 130], [12, 70], [13, 30], [32, 60], [41, 100]]
	end

	def setup247 # Yin Yang 10 Chaos
	  @immortal = true
	  @quickskill_id = [480, 481, 482, 483, 484, 485]
	  @action_frequency = 420
	  @base_action_set = [[413, 1], [414, 1], [415, 1], [416, 1], [417, 1], [418, 1]]
	end

	def setup248 # Plush Special Chaos
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

	def setup249 # Shadow Reimu Chaos
    setup223
	end

	def setup250 # Shadow Marisa Chaos
    setup202
	end

	def setup251 # Shadow Sakuya Chaos
    setup164
	end

	def setup252 # Yukari Chaos
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
	  @spellcard_id = [528, 495]
	  @spellcard_casting_value = [8, 6]
	  @action_frequency = 35
	  @base_action_set = [[0, 8], [2, 6], [4, 4], [7, 4], [11, 4], [20, 5], [26, 4],  
	  [419, 3], [420, 2], [421, 2], [422, 2], [423, 1], [424, 2], [425, 1], [427, 12]]
	  @casting_action_set = [[0, 3], [13, 2], [20, 2], [25, 2]]
	  @hyper_action_set = [[0, 8], [2, 6], [4, 4], [7, 4], [11, 4], [20, 5], [26, 4],  
	  [419, 3], [420, 2], [421, 2], [422, 2], [423, 1], [424, 2], [425, 1], [426, 2]]
	  @drop_list = []
	end

	def setup253 # Suika
	  @immortal = true
	end

	def setup254 # Yukari
	  @immortal = true
	end

	def setup255 # Angel Fairy 01 Chaos
	  @max_attacks = 1
	  @combo_attack_id = [529]
	  @quickskill_id = [530, 531]
	  @action_frequency = 30
	  @base_action_set = [[0, 7], [3, 4], [11, 2], [16, 1], [24, 4], 
	  [452, 3], [453, 3], [454, 2]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 200], [3, 110], [12, 100], [21, 50], [33, 50], [41, 40]]
	end

	def setup256 # Plush 02 Chaos
	  @max_attacks = 1
	  @combo_attack_id = [532]
	  @quickskill_id = [533, 534, 535]
	  @action_frequency = 25
	  @base_action_set = [[0, 8], [2, 2], [5, 2], [7, 3], [9, 2], [13, 3], [24, 2], [27, 2], 
	  [455, 3], [456, 3], [457, 1], [458, 1]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[3, 210], [41, 50], [52, 70]]
	end

	def setup257 # Celestial Beast 01 Chaos
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @quickskill_id = [536, 537, 538]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [4, 3], [9, 2], [11, 2], [13, 2], [26, 4], [27, 2], 
	  [459, 3], [460, 2], [461, 3]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = [[2, 250], [3, 60], [32, 60], [34, 40]]
	end

	def setup258 # Celestial Guardian 01 Chaos
    @small_bar_type = 1
	  @base_hyper_max = 24
	  @resist_states = [50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @max_attacks = 1
	  @combo_attack_id = [539]
	  @quickskill_id = [540, 541]
	  @spellcard_id = [542]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 5], [2, 4], [8, 2], [10, 2], [24, 2], 
	  [462, 2], [463, 2], [464, 3], [465, 1]]
	  @casting_action_set = [[0, 1], [25, 2], [28, 1]]
	  @hyper_action_set = [[0, 1], [2, 3], [5, 5], [7, 2], 
	  [466, 2], [467, 2], [468, 5]]
	  @drop_list = [[3, 150], [4, 60], [12, 60], [13, 40], [21, 80], [41, 50]]
	end

	def setup259 # Celestial Whale 01 Chaos
    @small_bar_type = 2
	  @base_cast_speed = 80
	  @resist_states = [50, 100, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, -100, 0]
	  @immune_to_bump = true
	  @max_attacks = 1
	  @combo_attack_id = [543]
	  @quickskill_id = [544, 545, 546]
	  @spellcard_id = [547]
	  @spellcard_casting_value = [10]
	  @action_frequency = 30
	  @base_action_set = [[0, 6], [3, 4], [8, 2], [11, 4], [16, 2], [24, 3], 
	  [469, 5], [470, 2], [471, 2], [472, 2], [473, 1]]
	  @casting_action_set = [[0, 3], [11, 2], [16, 1], [26, 2]]
	  @hyper_action_set = []
	  @drop_list = [[4, 200], [13, 50], [22, 50], [31, 50], [41, 100], [52, 80]]
	end

	def setup260 # Yin Yang 11 Chaos
	  @immortal = true
	  @lifespan = 260
	  @base_cast_speed = 100
	  @max_attacks = 1
	  @combo_attack_id = [548]
	  @action_frequency = 10
	  @base_action_set = [[474, 1]]
	end

	def setup261 # Komachi A Chaos
	  @face_name = "Komachi"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = []
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [549, 550]
	  @quickskill_id = [551, 552, 553, 554, 555]
	  @spellcard_id = [556, 557]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 10], [2, 6], [4, 4], [7, 3], [9, 3], [11, 4], [20, 4], 
	  [475, 4], [476, 3], [477, 1], [480, 10]]
	  @casting_action_set = []
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup262 # Komachi B Chaos
	  @face_name = "Komachi"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @boss_bar_drop_list = [41, 12, 41, 32, 41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 0]
	  @max_attacks = 2
	  @combo_attack_id = [549, 550]
	  @quickskill_id = [551, 552, 553, 554, 555]
	  @spellcard_id = [556, 557]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 30
	  @base_action_set = [[0, 8], [2, 6], [4, 4], [7, 3], [9, 3], [11, 4], [20, 4], 
	  [475, 5], [476, 4], [477, 2], [478, 2], [479, 3], [481, 1], [482, 1]]
	  @casting_action_set = [[0, 2], [13, 2], [21, 3], [27, 2]]
	  @hyper_action_set = []
	  @drop_list = []
	end

	def setup263 # Tenshi A Chaos
	  @face_name = "Tenshi"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @base_hyper_max = 2000
	  @boss_bar_drop_list = [41, 33, 41, 32, 41, 31, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 0, 50]
	  @max_attacks = 1
	  @combo_attack_id = [558]
	  @quickskill_id = [559, 560, 561, 562]
	  @spellcard_id = [563, 564]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 40
	  @base_action_set = [[0, 5], [2, 6], [8, 3], [11, 2], [13, 3], [24, 2], [27, 2], 
	  [483, 5], [484, 6], [485, 2], [486, 2], [487, 2], [488, 1], [489, 20], [490, 20]]
	  @casting_action_set = [[0, 1], [9, 1], [13, 2], [27, 3]]
	  @hyper_action_set = [[0, 5], [2, 6], [8, 3], [11, 2], [13, 3], [24, 2], [27, 2], 
	  [483, 5], [484, 6], [485, 2], [486, 2], [487, 2], [488, 1]]
	  @drop_list = []
	end

	def setup264 # Iku A Chaos
	  @face_name = "Iku"
	  @base_guard_max = 1200
	  @base_cast_speed = 100
	  @boss = true
	  @base_maxhp_bar = 8
	  @base_hyper_max = 2000
	  @boss_bar_drop_list = [41, 12, 41, 12, 41, 12, 41]
	  @resist_states = [50, 50, 50, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0]
	  @base_elem_resist = [0, 0, 0, 50, 0]
	  @max_attacks = 1
	  @combo_attack_id = [565]
	  @quickskill_id = [566, 567, 568, 569]
	  @spellcard_id = [570, 571]
	  @spellcard_casting_value = [10, 10]
	  @action_frequency = 40
	  @base_action_set = [[0, 5], [2, 2], [4, 4], [7, 6], [9, 2], [13, 3], [15, 2], 
    [25, 3], [27, 4], 
	  [491, 5], [492, 3], [493, 6], [494, 3], [495, 2], [496, 1], [497, 20], [498, 20]]
	  @casting_action_set = [[0, 1], [9, 1], [13, 2], [27, 3]]
	  @hyper_action_set = [[0, 5], [2, 2], [4, 4], [7, 6], [9, 2], [13, 3], [15, 2], 
    [25, 3], [27, 4], 
	  [491, 5], [492, 3], [493, 5], [494, 3], [495, 2], [496, 1]]
	  @drop_list = []
	end
end