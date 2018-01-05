class Game_Action
  
  def setup(id)
    if id < 100
      case id
      when 0 # ne fait rien
        @type = -1
      when 1 # approche lente au cac
        @type = 0
        @args = [0]
        @distance_min_from_player = 48
      when 2 # approche lente à courte distance
        @type = 0
        @args = [0]
        @distance_min_from_player = 96
      when 3 # approche lente à mi-distance
        @type = 0
        @args = [0]
        @distance_min_from_player = 192
      when 4 # approche lente à longue distance
        @type = 0
        @args = [0]
        @distance_min_from_player = 288
      when 5 # approche rapide à courte distance
        @type = 1
        @args = [0]
        @distance_min_from_player = 96
      when 6 # approche rapide à mi-distance
        @type = 1
        @args = [0]
        @distance_min_from_player = 192
      when 7 # approche rapide à longue distance
        @type = 1
        @args = [0]
        @distance_min_from_player = 288
      when 8 # approche rapide à très longue distance
        @type = 1
        @args = [0]
        @distance_min_from_player = 384
      when 9 # dépassement
        @type = 1
        @args = [0]
        @distance_max_from_player = 96
      when 10 # dégagement d'un bord lent
        @type = 2
      when 11 # dégagement d'un bord lent si joueur proche
        @type = 2
        @distance_max_from_player = 128
      when 12 # dégagement d'un bord rapide
        @type = 3
      when 13 # dégagement d'un bord rapide si joueur proche
        @type = 3
        @distance_max_from_player = 128
      when 14 # saut si joueur proche
        @type = 4
        @distance_max_from_player = 128
      when 15 # saut si joueur éloigné
        @type = 4
        @distance_min_from_player = 192
      when 16 # saut toutes distances
        @type = 4
      when 20 # garde au cac
        @type = 5
        @distance_max_from_player = 96
      when 21 # garde à mi-distance
        @type = 5
        @distance_max_from_player = 192
      when 22 # garde à longue distance
        @type = 5
        @distance_max_from_player = 288
      when 23 # garde toutes distances
        @type = 5
      when 24 # éloignement lent à courte distance
        @type = 0
        @args = [1]
        @distance_max_from_player = 96
      when 25 # éloignement lent à mi-distance
        @type = 0
        @args = [1]
        @distance_max_from_player = 192
      when 26 # éloignement lent à longue distance
        @type = 0
        @args = [1]
        @distance_max_from_player = 288
      when 27 # éloignement rapide à courte distance
        @type = 1
        @args = [1]
        @distance_max_from_player = 96
      when 28 # éloignement rapide à mi-distance
        @type = 1
        @args = [1]
        @distance_max_from_player = 192
      when 29 # éloignement rapide à longue distance
        @type = 1
        @args = [1]
        @distance_max_from_player = 288
      when 30 # Forest Youkai 01 attack
        @type = 10
        @wait_before_reuse = 4
        @distance_max_from_player = 288
      when 31 # Forest Youkai 01 rock
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_min_from_player = 96
        @distance_max_from_player = 288
      when 32 # Forest Youkai 01 : Earthquake
        @type = 12
        @args = [0]
        @one_time_action = true
        @life_count_min = 600
      when 33 # Fairy 01 attack
        @type = 10
        @wait_before_reuse = 3
        @distance_min_from_player = 96
        @distance_max_from_player = 384
      when 34 # Fairy 01 wave
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @distance_min_from_player = 192
        @distance_max_from_player = 384
      when 35 # Fairy 01 rush
        @type = 11
        @args = [1]
        @wait_before_reuse = 6
        @y_max_from_player = 64
        @distance_min_from_player = 64
        @distance_max_from_player = 192
      when 36 # Poisonous Flower 01 attack
        @type = 10
        @wait_before_reuse = 3
      when 37 # Poisonous Flower 01 poison
        @type = 11
        @args = [0]
        @wait_before_reuse = 7
        @life_count_min = 300
        @distance_min_from_player = 160
      when 38 # Yin Yang 01 attack
        @type = 10
        @life_count_max = 480
        @wait_before_reuse = 10
      when 39 # Cirno attack
        @type = 10
        @wait_before_reuse = 4
        @distance_min_from_player = 96
        @distance_max_from_player = 320
      when 40 # Cirno slide
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @on_ground = true
        @y_max_from_player = 64
        @distance_min_from_player = 64
        @distance_max_from_player = 224
      when 41 # Cirno waves
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @distance_min_from_player = 320
      when 42 # Cirno spin crush
        @type = 11
        @args = [2]
        @wait_before_reuse = 12
        @distance_max_from_player = 320
      when 43 # Cirno frozen bullets
        @type = 11
        @args = [3]
        @wait_before_reuse = 36
        @distance_min_from_player = 128
        @hp_max = 50
      when 44 # Cirno Crystal Bombs 75%
        @type = 12
        @args = [0]
        @wait_before_reuse = 20
        @hp_max = 75
      when 45 # Cirno Crystal Bombs 25%
        @type = 12
        @args = [0]
        @wait_before_reuse = 30
        @hp_max = 25
      when 46 # Haunted Tree 01 bats
        @type = 10
        @wait_before_reuse = 5
        @distance_max_from_player = 160
      when 47 # Haunted Tree 01 acorn downfall
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_max_from_player = 480
      when 48 # Haunted Tree 01 regen
        @type = 11
        @args = [1]
        @wait_before_reuse = 25
        @hp_max = 60
      when 49 # Haunted Tree 01 : Evil Butterflies
        @type = 12
        @args = [0]
        @wait_before_reuse = 30
        @life_count_min = 300
      when 50 # Doll 01 attack
        @type = 10
        @wait_before_reuse = 5
        @distance_min_from_player = 96
      when 51 # Doll 01 rush
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @y_max_from_player = 48
        @distance_min_from_player = 128
        @distance_max_from_player = 400
      when 52 # Doll 02 attack
        @type = 10
        @wait_before_reuse = 10
        @distance_min_from_player = 128
      when 53 # Doll 02 arrow
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @life_count_min = 180
        @y_max_from_player = 192
        @distance_min_from_player = 288
      when 54 # Alice laser
        @type = 10
        @wait_before_reuse = 6
        @distance_min_from_player = 288
      when 55 # Alice sonic waves
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @y_max_from_player = 96
        @distance_max_from_player = 160
      when 56 # Alice goliath doll
        @type = 11
        @args = [1]
        @wait_before_reuse = 16
      when 57 # Alice +2 gray dolls
        @type = 11
        @args = [2]
        @wait_before_reuse = 20
        @allies_max = 3
      when 58 # Alice +1 red doll
        @type = 11
        @args = [3]
        @wait_before_reuse = 40
        @hp_max = 40
        @allies_max = 4
      when 59 # Alice heal
        @type = 11
        @args = [4]
        @wait_before_reuse = 35
        @hp_max = 80
        @allies_min = 1
      when 60 # Alice : Puppeteer Sign : Dolls' Rampage
        @type = 12
        @args = [0]
        @wait_before_reuse = 60
        @hp_max = 60
        @allies_max = 2
      when 61 # Three-Tails Fox 01 attack
        @type = 10
        @wait_before_reuse = 8
      when 62 # Three-Tails Fox 01 hidden bomb
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @distance_max_from_player = 160
      when 63 # Sunflower Fairy 01 attack
        @type = 10
        @wait_before_reuse = 5
        @distance_min_from_player = 160
      when 64 # Sunflower Fairy 01 pillar of flames
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_max_from_player = 320
      when 65 # Sunflower Fairy 01 : Spontaneous Combustion
        @type = 12
        @args = [0]
        @one_time_action = true
        @hp_min = 25
        @hp_max = 75
      when 66 # Yin Yang 02 attack
        @type = 10
        @life_count_max = 720
        @wait_before_reuse = 14
      when 67 # Yin Yang 03 attack
        @type = 10
        @one_time_action = true
      when 68 # Bonefish 01 attack
        @type = 10
        @wait_before_reuse = 10
        @distance_max_from_player = 320
      when 69 # Bonefish 01 missiles
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
      when 70 # Little Fairy 01 mutism
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
      when 71 # Little Fairy 01 heal + regen
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @allies_min = 1
      when 72 # Little Fairy 01 attack+
        @type = 11
        @args = [2]
        @wait_before_reuse = 14
        @allies_min = 1
      when 73 # Reisen kick
        @type = 10
        @wait_before_reuse = 12
        @y_max_from_player = 48
        @distance_max_from_player = 128
      when 74 # Reisen frozen bullet
        @type = 11
        @args = [0]
        @wait_before_reuse = 9
        @distance_min_from_player = 64
      when 75 # Reisen gatling
        @type = 11
        @args = [1]
        @wait_before_reuse = 24
        @distance_min_from_player = 160
      when 76 # Reisen illusion shot 01
        @type = 11
        @args = [2]
        @wait_before_reuse = 24
        @distance_min_from_player = 160
      when 77 # Reisen illusion shot 02
        @type = 11
        @args = [3]
        @wait_before_reuse = 24
        @hp_max = 75
      when 78 # Reisen : Lunar Eyes : Murderer Rabbit's Ambush
        @type = 12
        @args = [0]
        @wait_before_reuse = 36
        @hp_max = 50
      when 79 # Reisen hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @one_time_action = true
        @hp_max = 25
      when 80 # Giant Squid 01 attack
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 128
      when 81 # Giant Squid 01 lightning balls
        @type = 11
        @args = [0]
        @wait_before_reuse = 6
      when 82 # Wyvern 01 attack
        @type = 10
        @wait_before_reuse = 5
        @distance_min_from_player = 160
      when 83 # Wyvern 01 frost breath
        @type = 11
        @args = [0]
        @wait_before_reuse = 9
        @distance_max_from_player = 256
      when 84 # Wyvern 01 frost aura
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @distance_max_from_player = 96
      when 85 # Wyvern 01 : Frost Sign : Snow Gun
        @type = 12
        @args = [0]
        @wait_before_reuse = 34
        @life_count_min = 450
        @allies_max = 0
      when 86 # Wyvern 01 : Frost Sign : Frost Lasers
        @type = 12
        @args = [1]
        @wait_before_reuse = 24
        @life_count_min = 450
      when 87 # Cirno frozen bullets
        @type = 11
        @args = [3]
        @wait_before_reuse = 36
        @distance_min_from_player = 128
        @hp_max = 60
      when 88 # Cirno Crystal Bombs
        @type = 12
        @args = [0]
        @wait_before_reuse = 24
      when 89 # Cirno : Ice Sign : Ice Age
        @type = 12
        @args = [1]
        @wait_before_reuse = 36
        @hp_max = 80
      when 90 # Cirno : Ice Sign : Glacial Eruption
        @type = 12
        @args = [2]
        @wait_before_reuse = 40
        @hp_max = 60
      when 91 # Lizard Youkai 01 attack
        @type = 10
        @wait_before_reuse = 10
        @y_max_from_player = 160
        @distance_max_from_player = 320
      when 92 # Lizard Youkai 01 distance
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @distance_min_from_player = 192
      when 93 # Lizard Youkai 01 slash
        @type = 11
        @args = [1]
        @wait_before_reuse = 3
        @y_max_from_player = 64
        @distance_max_from_player = 160
      when 94 # Lizard Youkai 01 buff
        @type = 11
        @args = [2]
        @wait_before_reuse = 32
      when 95 # Lizard Youkai 01 hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @wait_before_reuse = 36
        @hp_max = 80
      when 96 # Aya attack
        @type = 10
        @y_max_from_player = 64
        @distance_min_from_player = 96
      when 97 # Aya wind blades
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @distance_min_from_player = 192
      when 98 # Aya range shot
        @type = 11
        @args = [1]
        @wait_before_reuse = 10
        @y_max_from_player = 64
        @distance_max_from_player = 128
      when 99 # Aya whirlwinds
        @type = 11
        @args = [2]
        @wait_before_reuse = 14
        @on_ground = true
        @distance_min_from_player = 192
        @hp_max = 83
      end
    elsif id < 200
      case id
      when 100 # Aya rush
        @type = 11
        @args = [3]
        @wait_before_reuse = 24
        @y_max_from_player = 64
        @distance_max_from_player = 256
        @hp_max = 66
      when 101 # Aya : Wind Sign : Eternal Tornado
        @type = 12
        @args = [0]
        @wait_before_reuse = 24
      when 102 # Aya : Wind God : Sonic Missiles
        @type = 12
        @args = [1]
        @wait_before_reuse = 48
        @hp_max = 66
      when 103 # Meiling attack
        @type = 10
        @distance_max_from_player = 64
      when 104 # Meiling waves
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_min_from_player = 192
      when 105 # Meiling rainbow ball
        @type = 11
        @args = [1]
        @wait_before_reuse = 36
        @distance_min_from_player = 96
        @hp_max = 80
      when 106 # Meiling rainbow shot
        @type = 11
        @args = [2]
        @wait_before_reuse = 18
      when 107 # Meiling shoulder hit
        @type = 11
        @args = [3]
        @wait_before_reuse = 12
        @distance_max_from_player = 64
      when 108 # Meiling regen
        @type = 11
        @args = [4]
        @wait_before_reuse = 30
        @hp_max = 80
      when 109 # Meiling : Colorful Sign : Rainbow Rain
        @type = 12
        @args = [0]
        @wait_before_reuse = 82
        @hp_max = 60
      when 110 # Fire Beast 01 attack
        @type = 10
        @wait_before_reuse = 8
        @distance_min_from_player = 128
      when 111 # Fire Beast 01 fire balls
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
      when 112 # Fire Beast 01 fire eruption
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
      when 113 # Fire Beast 01 : Pyromania
        @type = 12
        @args = [0]
        @wait_before_reuse = 28
        @life_count_min = 360
        @allies_max = 1
      when 114 # Gargoyle 01 triple attack
        @type = 10
        @wait_before_reuse = 8
      when 115 # Gargoyle 01 laser
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @y_max_from_player = 64
        @distance_max_from_player = 384
      when 116 # Maid Fairy 01 rush
        @type = 10
        @wait_before_reuse = 10
      when 117 # Maid Fairy 01 shot 01
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
      when 118 # Maid Fairy 01 shot 02
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @distance_min_from_player = 224
      when 119 # One-Eye Bat 01 shot
        @type = 10
        @wait_before_reuse = 6
      when 120 # One-Eye Bat 01 evil zone
        @type = 11
        @args = [0]
        @wait_before_reuse = 20
        @distance_min_from_player = 96
        @distance_max_from_player = 384
      when 121 # Yin Yang 04 attack
        @type = 10
        @one_time_action = true
      when 122 # Flying Book 01 : Earth Sign : Crumbling
        @type = 12
        @args = [0]
        @wait_before_reuse = 10
      when 123 # Flying Book 01 : Fire Sign : Incandescence
        @type = 12
        @args = [1]
        @wait_before_reuse = 14
      when 124 # Flying Book 02 : Water Sign : Submarine Beings
        @type = 12
        @args = [0]
        @wait_before_reuse = 12
      when 125 # Flying Book 02 : Wind Sign : Eyewalls
        @type = 12
        @args = [1]
        @wait_before_reuse = 10
      when 126 # Ghost Book 01 : shot 01
        @type = 10
        @wait_before_reuse = 6
      when 127 # Ghost Book 01 : shot 02
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @y_max_from_player = 160
        @distance_max_from_player = 320
      when 128 # Ghost Book 01 : Curse n°158
        @type = 12
        @args = [0]
        @one_time_action = true
        @life_count_min = 300
      when 129 # Ghost Book 01 : Camouflage
        @type = 12
        @args = [1]
        @one_time_action = true
        @life_count_min = 300
      when 130 # Flying Book 01 : Earth Sign : Crumbling
        @type = 12
        @args = [0]
        @wait_before_reuse = 10
      when 131 # Flying Book Special : Fire Sign : Incandescence
        @type = 12
        @args = [1]
        @wait_before_reuse = 14
      when 132 # Flying Book Special : Water Sign : Submarine Beings
        @type = 12
        @args = [2]
        @wait_before_reuse = 12
      when 133 # Flying Book Special : Wind Sign : Eyewalls
        @type = 12
        @args = [3]
        @wait_before_reuse = 10
      when 134 # Flying Book special teleportation
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @life_count_min = 300
      when 135 # Flying Book Special : Curse n°666 : Death Sentence
        @type = 12
        @args = [4]
        @wait_before_reuse = 30
        @life_count_min = 420
      when 136 # Patchouli elemental shot
        @type = 10
        @distance_min_from_player = 128
      when 137 # Patchouli safe zone
        @type = 11
        @args = [0]
        @wait_before_reuse = 20
      when 138 # Patchouli warning zone
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
      when 139 # Patchouli death zone
        @type = 11
        @args = [2]
        @wait_before_reuse = 20
      when 140 # Patchouli teleportation
        @type = 11
        @args = [3]
        @wait_before_reuse = 12
        @distance_max_from_player = 96
      when 141 # Patchouli : Tempest Sign : Raijin's Call
        @type = 12
        @args = [0]
        @wait_before_reuse = 42
        @hp_max = 80
      when 142 # Patchouli : Magma Sign : Amaterasu's Drops
        @type = 12
        @args = [1]
        @wait_before_reuse = 42
        @hp_max = 60
      when 143 # Snake 01 attack
        @type = 10
        @wait_before_reuse = 6
        @y_max_from_player = 64
        @distance_max_from_player = 176
      when 144 # Snake 01 laser
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @distance_min_from_player = 288
      when 145 # Snake 01 lightning snakes
        @type = 11
        @args = [1]
        @wait_before_reuse = 24
        @life_count_min = 300
      when 146 # Shadow Sakuya attack
        @type = 10
        @wait_before_reuse = 6
        @distance_max_from_player = 80
      when 147 # Shadow Sakuya shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_min_from_player = 192
      when 148 # Shadow Sakuya stop time 1
        @type = 11
        @args = [1]
        @wait_before_reuse = 28
        @hp_max = 75
      when 149 # Shadow Sakuya stop time 2
        @type = 11
        @args = [2]
        @wait_before_reuse = 40
        @hp_max = 50
      when 150 # Shadow Sakuya rush
        @type = 11
        @args = [3]
        @wait_before_reuse = 18
        @y_max_from_player = 64
        @distance_min_from_player = 128
        @distance_max_from_player = 288
      when 151 # Shadow Sakuya shadow balls
        @type = 11
        @args = [4]
        @wait_before_reuse = 60
      when 152 # Remilia attack
        @type = 10
        @wait_before_reuse = 5
        @y_max_from_player = 64
        @distance_min_from_player = 160
      when 153 # Remilia shot 01
        @type = 11
        @args = [0]
        @wait_before_reuse = 22
      when 154 # Remilia rotation
        @type = 11
        @args = [1]
        @wait_before_reuse = 16
        @distance_max_from_player = 256
      when 155 # Remilia shot 02
        @type = 11
        @args = [2]
        @wait_before_reuse = 24
        @hp_max = 83
      when 156 # Remilia deadly spear
        @type = 11
        @args = [3]
        @wait_before_reuse = 8
      when 157 # Remilia hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @wait_before_reuse = 52
        @hp_max = 50
      when 158 # Remilia : Little Sister's Spell : Four of a Kind
        @type = 12
        @args = [0]
        @wait_before_reuse = 60
        @hp_max = 66
      when 159 # Remilia : Vampire Art : Night Raid
        @type = 12
        @args = [1]
        @wait_before_reuse = 68
        @hp_max = 50
        @allies_max = 0
      when 160 # Remilia clone attack
        @type = 10
        @wait_before_reuse = 5
        @y_max_from_player = 64
        @distance_min_from_player = 160
      when 161 # Remilia clone rotation
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
        @distance_max_from_player = 256
      when 162 # Fairy 02 aimed shots
        @type = 10
        @wait_before_reuse = 8
        @distance_min_from_player = 128
        @distance_max_from_player = 384
      when 163 # Fairy 02 tornado
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @y_max_from_player = 64
        @distance_max_from_player = 384
      when 164 # Fairy 02 thunder bomb
        @type = 11
        @args = [1]
        @wait_before_reuse = 16
        @life_count_min = 300
        @distance_max_from_player = 384
      when 165 # Little Fairy 02 hot zone
        @type = 11
        @args = [0]
        @wait_before_reuse = 24
        @on_ground = true
        @allies_min = 1
      when 166 # Little Fairy 02 stun+freeze
        @type = 11
        @args = [1]
        @wait_before_reuse = 18
      when 167 # Little Fairy 02 invincibility
        @type = 11
        @args = [2]
        @wait_before_reuse = 14
        @allies_min = 1
      when 168 # Slime 01 ice wave
        @type = 10
        @wait_before_reuse = 8
        @y_max_from_player = 64
        @distance_min_from_player = 128
        @distance_max_from_player = 384
      when 169 # Slime 01 mini slimes
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_max_from_player = 256
      when 170 # Slime 01 duplication
        @type = 11
        @args = [1]
        @wait_before_reuse = 40
        @life_count_min = 180
        @allies_max = 4
      when 171 # Ice Flower attack
        @type = 10
        @wait_before_reuse = 3
      when 172 # Ice Flower powered shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 7
        @life_count_min = 300
        @distance_min_from_player = 160
      when 173 # Yin Yang 04 attack
        @type = 10
      when 174 # Yin Yang 04 special
        @type = 11
        @args = [0]
        @wait_before_reuse = 40
        @life_count_min = 240
      when 175 # Yin Yang 05 attack
        @type = 10
      when 176 # Yin Yang 05 special
        @type = 11
        @args = [0]
        @wait_before_reuse = 40
        @life_count_min = 240
      when 177 # Aya rush
        @type = 11
        @args = [4]
        @force_next_actions = [[99, 1]]
        @force_max_tries = 2
        @wait_before_reuse = 14
        @y_max_from_player = 64
        @distance_max_from_player = 160
      when 178 # Aya : Wind Sign : Dual Tornado
        @type = 12
        @args = [0]
        @wait_before_reuse = 36
        @hp_max = 83
      when 179 # Aya : Wind God : Tengu's Sonic Missiles
        @type = 12
        @args = [1]
        @wait_before_reuse = 48
        @hp_max = 66
      when 180 # Snow Youkai 01 ice shot
        @type = 10
        @distance_max_from_player = 256
        @wait_before_reuse = 15
      when 181 # Snow Youkai 01 stars
        @type = 11
        @args = [0]
        @distance_max_from_player = 80
        @wait_before_reuse = 6
      when 182 # Snow Youkai 01 rush
        @type = 11
        @args = [1]
        @distance_min_from_player = 160
        @distance_max_from_player = 384
        @wait_before_reuse = 20
      when 183 # Snow Youkai 01 : KA.MI.KA.ZE
        @type = 12
        @args = [0]
        @hp_max = 50
        @one_time_action = true
      when 184 # Slime Special falling rock
        @type = 10
        @wait_before_reuse = 14
        @distance_max_from_player = 384
      when 185 # Slime Special mini slimes
        @type = 11
        @args = [0]
        @wait_before_reuse = 18
        @distance_max_from_player = 256
      when 186 # Slime Special duplication
        @type = 11
        @args = [1]
        @wait_before_reuse = 30
        @allies_max = 4
      when 187 # Yeti 01 attack
        @type = 10
        @wait_before_reuse = 12
        @distance_max_from_player = 384        
      when 188 # Yeti 01 frenzy
        @type = 11
        @args = [0]
        @wait_before_reuse = 22
        @y_max_from_player = 64
        @distance_max_from_player = 256
      when 189 # Yeti 01 hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @wait_before_reuse = 40
        @life_count_min = 360
      when 190 # Yeti 01 power up
        @type = 11
        @args = [1]
        @wait_before_reuse = 36
      when 191 # Yeti 01 : Ice Sign : Micro Blizzard
        @type = 12
        @args = [0]
        @wait_before_reuse = 40
        @hp_max = 66
      when 192 # Sanae attack
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 80
      when 193 # Sanae giant pentagram
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
        @distance_max_from_player = 320
      when 194 # Sanae elemental pentagrams
        @type = 11
        @args = [1]
        @wait_before_reuse = 40
        @hp_max = 66
      when 195 # Sanae esoteric pentagrams
        @type = 11
        @args = [2]
        @wait_before_reuse = 14
        @distance_max_from_player = 160
      when 196 # Sanae +2 pentagrams
        @type = 11
        @args = [3]
        @wait_before_reuse = 38
        @allies_max = 2
        @hp_max = 83
      when 197 # Sanae : Greetings of the Thunder Gods
        @type = 12
        @args = [0]
        @wait_before_reuse = 54
        @hp_max = 50
      when 198 # Pentagram 01 attack
        @type = 10
        @wait_before_reuse = 8
      when 199 # Pentagram 02 attack
        @type = 10
        @wait_before_reuse = 8
      end
    elsif id < 300
      case id
      when 200 # Wyvern 02 attack
        @type = 10
        @wait_before_reuse = 5
        @distance_min_from_player = 160
      when 201 # Wyvern 01 lightning breath
        @type = 11
        @args = [0]
        @wait_before_reuse = 9
        @y_max_from_player = 64
        @distance_max_from_player = 256
      when 202 # Wyvern 02 wind aura
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @distance_max_from_player = 96
      when 203 # Wyvern 02 : Storm Sign : Electrical Overload
        @type = 12
        @args = [0]
        @wait_before_reuse = 32
        @life_count_min = 300
        @allies_max = 1
      when 204 # Wyvern 02 : Revitalizing Gleam
        @type = 12
        @args = [1]
        @wait_before_reuse = 44
        @life_count_min = 300
        @allies_min = 1
      when 205 # Leviathan 01 pearl
        @type = 10
        @wait_before_reuse = 14
      when 206 # Leviathan 01 frost laser
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @y_max_from_player = 160
        @distance_min_from_player = 160
        @distance_max_from_player = 384
      when 207 # Leviathan 01 sea eruption
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
      when 208 # Leviathan 01 : Sea Dragon Sign : Seabed Undulation
        @type = 12
        @args = [0]
        @wait_before_reuse = 44
        @life_count_min = 450
        @allies_max = 1
      when 209 # Leviathan 01 : Wind Dragon Sign : Heavens Illusion
        @type = 12
        @args = [1]
        @wait_before_reuse = 44
        @life_count_min = 450
        @allies_max = 2
      when 210 # Suwako attack
        @type = 10
        @wait_before_reuse = 8
        @y_max_from_player = 64
        @distance_max_from_player = 160
      when 211 # Suwako multi shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 30
        @allies_max = 1
      when 212 # Suwako frost dragons
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
        @on_ground = true
        @y_max_from_player = 64
      when 213 # Suwako poisonous swamp
        @type = 11
        @args = [2]
        @wait_before_reuse = 16
        @hp_max = 84
      when 214 # Suwako summon frogs
        @type = 11
        @args = [3]
        @wait_before_reuse = 48
        @allies_max = 2
        @hp_max = 84
      when 215 # Suwako : Native God : Ethereal Snakes
        @type = 12
        @args = [0]
        @wait_before_reuse = 70
        @hp_max = 70
        @allies_max = 1
      when 216 # Suwako : Frog Sign : Frogs in the Tempest
        @type = 12
        @args = [1]
        @wait_before_reuse = 70
        @hp_max = 56
        @allies_max = 1
      when 217 # Frog 01 attack
        @type = 10
        @wait_before_reuse = 5
        @distance_max_from_player = 288
      when 218 # Frog 01 heart
        @type = 11
        @args = [0]
        @wait_before_reuse = 20
      when 219 # Sunflower Fairy 02 poison attack
        @type = 10
        @wait_before_reuse = 7
        @distance_min_from_player = 96
      when 220 # Sunflower Fairy 02 earth shots
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_max_from_player = 320
      when 221 # Sunflower Fairy 02 : Asteroid Belt
        @type = 12
        @args = [0]
        @one_time_action = true
        @hp_min = 25
        @life_count_min = 360
        @allies_max = 2
      when 222 # Beetle Youkai 01 falling rocks
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 480
      when 223 # Beetle Youkai 01 heal and pulse
        @type = 11
        @args = [0]
        @wait_before_reuse = 18
        @hp_max = 80
      when 224 # Beetle Youkai 01 spirit beetle
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @life_count_min = 300
        @y_max_from_player = 64
        @distance_max_from_player = 320
      when 225 # One-Eye Bat 02 rush
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 128
      when 226 # One-Eye Bat 02 shadow bats
        @type = 11
        @args = [0]
        @wait_before_reuse = 20
        @life_count_min = 240
        @distance_max_from_player = 480
      when 227 # Slime 02 flame ball
        @type = 10
        @wait_before_reuse = 14
        @distance_max_from_player = 384
      when 228 # Slime 02 mini slimes
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @life_count_min = 240
        @distance_max_from_player = 384
      when 229 # Slime 02 duplication
        @type = 11
        @args = [1]
        @wait_before_reuse = 40
        @life_count_min = 180
        @allies_max = 4
      when 230 # Caterpillar 01 attack
        @type = 10
        @wait_before_reuse = 12
        @distance_min_from_player = 128
        @distance_max_from_player = 320
      when 231 # Caterpillar 01 earth shock
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @distance_max_from_player = 320
      when 232 # Caterpillar 01 poisonous field
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
        @on_ground = true
      when 233 # Caterpillar 01 : Contaminated Spheres
        @type = 12
        @args = [0]
        @wait_before_reuse = 36
        @life_count_min = 360
        @allies_max = 1
      when 234 # Bonefish 01a attack
        @type = 10
        @wait_before_reuse = 10
        @distance_max_from_player = 320
      when 235 # Bonefish 01a missiles
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
      when 236 # Round Fish 01 attack
        @type = 10
        @wait_before_reuse = 12
        @distance_min_from_player = 128
        @distance_max_from_player = 320
      when 237 # Round Fish 01 mini-fishes
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @life_count_min = 240
      when 238 # Yin Yang 07 attack
        @type = 10
        @life_count_max = 800
        @wait_before_reuse = 10
      when 239 # Yin Yang 07 follow
        @type = 10
      when 240 # Yin Yang 07 super laser
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @life_count_min = 360
      when 241 # Suika attack
        @type = 10
        @wait_before_reuse = 5
        @y_max_from_player = 64
        @distance_max_from_player = 128
      when 242 # Suika fire breath
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @y_max_from_player = 64
      when 243 # Suika jump kick
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @y_max_from_player = 64
        @distance_max_from_player = 128
      when 244 # Suika player teleportation
        @type = 11
        @args = [2]
        @force_next_actions = [[238, 1], [243, 1]]
        @force_max_tries = 3
        @wait_before_reuse = 16
        @on_ground = true
        @hp_max = 83
        @distance_min_from_player = 224
      when 245 # Suika big shock
        @type = 11
        @args = [3]
        @wait_before_reuse = 8
        @on_ground = true
      when 246 # Suika hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @wait_before_reuse = 52
        @hp_max = 66
      when 247 # Suika : Drunk Sign : Four Sakes of Destiny
        @type = 12
        @args = [0]
        @wait_before_reuse = 60
        @hp_max = 83
      when 248 # Suika : Oni Sign : Mist Clones
        @type = 12
        @args = [1]
        @wait_before_reuse = 70
        @hp_max = 50
      when 249 # Stone Youkai 01 attack
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 224
      when 250 # Stone Youkai 01 earth waves
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @y_max_from_player = 64
      when 251 # Stone Youkai 01 : Earth Sign : Thousand Stalactites
        @type = 12
        @args = [0]
        @wait_before_reuse = 48
        @life_count_min = 360
        @allies_max = 2
      when 252 # Stone Youkai 01 : Earth Sign : Chaotic Rocks
        @type = 12
        @args = [1]
        @wait_before_reuse = 48
        @hp_max = 60
        @allies_max = 2
      when 253 # Rock Thrower 01 attack
        @type = 10
        @distance_max_from_player = 672
      when 254 # Rock Thrower 02 attack
        @type = 10
        @distance_max_from_player = 672
      when 255 # Beetle Youkai Special spirit army
        @type = 11
        @args = [2]
        @wait_before_reuse = 28
        @hp_min = 33
        @life_count_min = 480
        @y_max_from_player = 64
      when 256 # Beetle Youkai Special teleportation
        @type = 11
        @args = [3]
        @wait_before_reuse = 28
        @hp_max = 66
      when 257 # Great Bull 01 fire orbs
        @type = 10
        @wait_before_reuse = 10
        @distance_max_from_player = 320
      when 258 # Great Bull 01 lightning orbs
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
        @distance_max_from_player = 320
        @y_max_from_player = 96
      when 259 # Great Bull 01 earth orbs
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
        @life_count_min = 300
      when 260 # Great Bull 01 : Explosive Runic Orbs
        @type = 12
        @args = [0]
        @wait_before_reuse = 40
        @hp_max = 75
        @allies_max = 1
      when 261 # Shadow Marisa attack
        @type = 10
        @wait_before_reuse = 6
        @distance_max_from_player = 80
      when 262 # Shadow Marisa laser
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_min_from_player = 64
        @distance_max_from_player = 320
        @y_max_from_player = 64
      when 263 # Shadow Marisa magic missile launcher
        @type = 11
        @args = [1]
        @wait_before_reuse = 42
      when 264 # Shadow Marisa shadow spark
        @type = 11
        @args = [2]
        @wait_before_reuse = 24
        @hp_max = 75
        @distance_min_from_player = 64
        @distance_max_from_player = 320
        @y_max_from_player = 64
      when 265 # Shadow Marisa flight
        @type = 11
        @args = [3]
        @wait_before_reuse = 24
        @hp_max = 75
        @distance_max_from_player = 160
      when 266 # Shadow Marisa healing geyser
        @type = 11
        @args = [4]
        @wait_before_reuse = 42
        @hp_max = 50
      when 267 # Flaming Dragon 01 attack
        @type = 10
        @wait_before_reuse = 6
        @distance_min_from_player = 96
        @distance_max_from_player = 480
      when 268 # Flaming Dragon 01 pillars of flames
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @on_ground = true
        @distance_max_from_player = 480
      when 269 # Flaming Dragon 01 explosions
        @type = 11
        @args = [1]
        @wait_before_reuse = 16
        @distance_max_from_player = 240
      when 270 # Flaming Dragon 01 : Blinding Light
        @type = 12
        @args = [0]
        @wait_before_reuse = 30
        @life_count_min = 360
      when 271 # Flaming Dragon 01 : Fire Sign : Utter Incandescence
        @type = 12
        @args = [1]
        @wait_before_reuse = 30
        @hp_max = 66
      when 272 # Utsuho attack
        @type = 10
        @wait_before_reuse = 8
        @on_ground = true
        @y_max_from_player = 64
      when 273 # Utsuho retreat shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_max_from_player = 160
      when 274 # Utsuho big particle
        @type = 11
        @args = [1]
        @wait_before_reuse = 16
      when 275 # Utsuho explosive particles
        @type = 11
        @args = [2]
        @wait_before_reuse = 20
        @hp_max = 84
      when 276 # Utsuho pentagrams
        @type = 11
        @args = [3]
        @wait_before_reuse = 20
        @hp_max = 70
      when 277 # Utsuho : Nuclear Sign : Atomic Fission
        @type = 12
        @args = [0]
        @wait_before_reuse = 70
        @hp_max = 70
      when 278 # Utsuho : Atomic Fire : Unstable Particles
        @type = 12
        @args = [1]
        @wait_before_reuse = 70
        @hp_max = 56
      when 279 # Ghost Fairy 01 attack
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 320
      when 280 # Ghost Fairy 01 soul circle
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
        @distance_max_from_player = 320
      when 281 # Ghost Fairy 01 soul rush
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
        @life_count_min = 240
        @distance_min_from_player = 224
      when 282 # Little Fairy 03 negative effects
        @type = 11
        @args = [0]
        @wait_before_reuse = 18
      when 283 # Little Fairy 03 protection zone
        @type = 11
        @args = [1]
        @wait_before_reuse = 24
        @life_count_min = 180
      when 284 # Little Fairy 03 healing pentagrams
        @type = 11
        @args = [2]
        @wait_before_reuse = 18
        @allies_min = 1
      when 285 # Hollow 01 stun attack
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 384
      when 286 # Hollow 01 doppelgangers
        @type = 11
        @args = [0]
        @wait_before_reuse = 18
        @distance_max_from_player = 192
      when 287 # Hollow 01 countdown of mutual death
        @type = 11
        @args = [1]
        @one_time_action = true
        @life_count_min = 300
        @distance_min_from_player = 192
        @distance_max_from_player = 640
      when 288 # Yin Yang 09 attack
        @type = 10
        @one_time_action = true
      when 289 # Shinigami 01 attack
        @type = 10
        @wait_before_reuse = 12
        @distance_min_from_player = 80
        @distance_max_from_player = 320
      when 290 # Shinigami 01 damage zone
        @type = 11
        @args = [0]
        @wait_before_reuse = 26
      when 291 # Shinigami 01 : Invocation Sign : Shinigami's Orb
        @type = 12
        @args = [0]
        @wait_before_reuse = 30
        @life_count_min = 300
        @allies_min = 1
      when 292 # Shinigami 01 : Death Sign : Nothingness Bullets
        @type = 12
        @args = [1]
        @wait_before_reuse = 42
        @life_count_min = 480
      when 293 # Shinigami's Orb 01 invincibility
        @type = 10
      when 294 # Ethereal Shinigami 01 attack
        @type = 10
        @wait_before_reuse = 12
        @distance_min_from_player = 80
        @distance_max_from_player = 320
      when 295 # Ethereal Shinigami 01 damage zone
        @type = 11
        @args = [0]
        @wait_before_reuse = 26
      when 296 # Ethereal Shinigami 01 : Death Sign : Ethereal Bullets
        @type = 12
        @args = [0]
        @wait_before_reuse = 42
        @life_count_min = 480
      when 297 # Skeleton 01 attack
        @type = 10
        @wait_before_reuse = 7
        @y_max_from_player = 64
        @distance_max_from_player = 320
      when 298 # Skeleton 01 wave of bones
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_min_from_player = 224
      when 299 # Skeleton 01 whirling bullets
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @distance_min_from_player = 128
      end
    elsif id < 400
      case id
      when 300 # Werewolf 01 attack
        @type = 10
        @wait_before_reuse = 8
        @y_max_from_player = 80
        @distance_max_from_player = 192
      when 301 # Werewolf 01 howling
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
      when 302 # Werewolf 01 frenzy
        @type = 11
        @args = [1]
        @wait_before_reuse = 24
        @distance_max_from_player = 320
      when 303 # Werewolf 01 : The Hungry Tribe
        @type = 12
        @args = [0]
        @wait_before_reuse = 40
        @life_count_min = 300
        @allies_max = 2
      when 304 # Ethereal Werewolf 01 attack
        @type = 10
        @wait_before_reuse = 8
        @y_max_from_player = 80
        @distance_max_from_player = 192
      when 305 # Ethereal Werewolf 01 howling
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
      when 306 # Ethereal Werewolf 01 frenzy
        @type = 11
        @args = [1]
        @wait_before_reuse = 24
        @distance_max_from_player = 320
      when 307 # Ethereal Werewolf 01 : The Ethereal Tribe
        @type = 12
        @args = [0]
        @wait_before_reuse = 40
        @life_count_min = 300
        @allies_max = 2
      when 308 # Death Mage 01 soul release
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 96
      when 309 # Death Mage 01 fire balls
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @distance_max_from_player = 384
      when 310 # Death Mage 01 ice ball
        @type = 11
        @args = [1]
        @wait_before_reuse = 22
      when 311 # Death Mage 01 : Wind Sign : Crossing of Beams
        @type = 12
        @args = [0]
        @wait_before_reuse = 52
        @life_count_min = 300
      when 312 # Death Mage 01 : Earth Sign : Terrestrial Rampage
        @type = 12
        @args = [1]
        @wait_before_reuse = 52
        @hp_max = 75
        @allies_max = 2
      when 313 # Poisonous Tree 01 thorns
        @type = 10
        @wait_before_reuse = 9
        @distance_max_from_player = 384
      when 314 # Poisonous Tree 01 poisonous seeds
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @y_max_from_player = 64
        @distance_max_from_player = 384
      when 315 # Poisonous Tree 01 aimed shots
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
        @distance_min_from_player = 224
      when 316 # Poisonous Tree : Countless Thorns
        @type = 12
        @args = [0]
        @wait_before_reuse = 40
        @hp_max = 60
        @allies_max = 2
      when 317 # Ethereal Poisonous Tree 01 thorns
        @type = 10
        @wait_before_reuse = 9
        @distance_max_from_player = 384
      when 318 # Ethereal Poisonous Tree 01 poisonous seeds
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @y_max_from_player = 64
        @distance_max_from_player = 384
      when 319 # Ethereal Poisonous Tree 01 aimed shots
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
        @distance_min_from_player = 224
      when 320 # Ethereal Poisonous Tree : Countless Ethereal Thorns
        @type = 12
        @args = [0]
        @wait_before_reuse = 40
        @hp_max = 60
        @allies_max = 2
      when 321 # Shadow Reimu attack
        @type = 10
        @wait_before_reuse = 6
        @distance_max_from_player = 96
      when 322 # Shadow Reimu shadow seals
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_min_from_player = 64
        @distance_max_from_player = 320
        @y_max_from_player = 64
      when 323 # Shadow Reimu shadow zone
        @type = 11
        @args = [1]
        @wait_before_reuse = 36
      when 324 # Shadow Reimu aimed cards
        @type = 11
        @args = [2]
        @wait_before_reuse = 30
        @hp_max = 75
        @distance_min_from_player = 160
      when 325 # Shadow Reimu falling orbs
        @type = 11
        @args = [3]
        @wait_before_reuse = 24
        @hp_max = 75
      when 326 # Shadow Reimu shadow intervention
        @type = 11
        @args = [4]
        @wait_before_reuse = 36
        @hp_max = 50
        @distance_max_from_player = 192
      when 327 # Youmu attack
        @type = 10
        @wait_before_reuse = 7
        @distance_max_from_player = 384
        @y_max_from_player = 64
      when 328 # Youmu rush
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
        @distance_max_from_player = 240
        @y_max_from_player = 64
      when 329 # Youmu slash
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @distance_min_from_player = 64
        @distance_max_from_player = 160
        @y_max_from_player = 64
      when 330 # Youmu jump shot 01
        @type = 11
        @args = [2]
        @wait_before_reuse = 18
        @distance_min_from_player = 128
        @y_max_from_player = 64
      when 331 # Youmu jump shot 02
        @type = 11
        @args = [3]
        @wait_before_reuse = 20
        @hp_max = 83
      when 332 # Youmu hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @wait_before_reuse = 58
        @hp_max = 50
      when 333 # Youmu rampage
        @type = 11
        @args = [4]
        @on_ground = true
        @wait_before_reuse = 12
        @distance_min_from_player = 160
        @distance_max_from_player = 384
      when 334 # Youmu : Ghost Sign : Ghostly Half Raid
        @type = 12
        @args = [0]
        @wait_before_reuse = 64
        @hp_max = 50
      when 335 # Youmu hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @wait_before_reuse = 58
      when 336 # Youmu Rush 01 left rush
        @type = 11
        @args = [0]
        @distance_max_from_player = 9999
        @wait_before_reuse = 1
        @life_count_min = 340
      when 337 # Youmu Rush 01 right rush
        @type = 11
        @args = [1]
        @distance_max_from_player = 9999
        @wait_before_reuse = 1
        @life_count_min = 120
      when 338 # Yuyuko attack
        @type = 10
        @wait_before_reuse = 8
        @distance_max_from_player = 320
      when 339 # Yuyuko soul bombs
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
      when 340 # Yuyuko rush
        @type = 11
        @args = [1]
        @wait_before_reuse = 36
        @distance_min_from_player = 160
        @distance_max_from_player = 384
        @hp_max = 85
      when 341 # Yuyuko roll+butterflies
        @type = 11
        @args = [2]
        @wait_before_reuse = 16
        @distance_max_from_player = 224
        @y_max_from_player = 64
      when 342 # Yuyuko shinigami's orbs
        @type = 11
        @args = [3]
        @wait_before_reuse = 60
        @allies_max = 0
        @hp_max = 70
      when 343 # Yuyuko healing souls
        @type = 11
        @args = [4]
        @wait_before_reuse = 38
        @allies_max = 0
        @hp_max = 56
      when 344 # Yuyuko : Blossom Sign : Butterfly Rings
        @type = 12
        @args = [0]
        @wait_before_reuse = 72
        @hp_max = 70
      when 345 # Yuyuko : Cherry Sign : Falling Petals
        @type = 12
        @args = [1]
        @wait_before_reuse = 80
        @hp_max = 56
      when 346 # Yuyuko : Resurrection Butterfly -33% Reflowering-
        @type = 12
        @args = [0]
        @one_time_action = true
        @life_count_min = 60
      when 347 # Yuyuko : Resurrection Butterfly -66% Reflowering-
        @type = 12
        @args = [1]
        @one_time_action = true
        @life_count_min = 1260
      when 348 # Yuyuko : Resurrection Butterfly -100% Reflowering-
        @type = 12
        @args = [2]
        @one_time_action = true
        @life_count_min = 2460
      when 349 # Shadow Fairy 01 shadow missiles
        @type = 10
        @wait_before_reuse = 8
        @distance_min_from_player = 96
        @distance_max_from_player = 384
      when 350 # Shadow Fairy 01 line shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @distance_max_from_player = 448
      when 351 # Shadow Fairy 01 : Void Sign : Dark Eruption
        @type = 12
        @args = [0]
        @one_time_action = true
        @life_count_min = 300
        @allies_max = 2
        @distance_max_from_player = 448
      when 352 # Shadow Doll 01 attack
        @type = 10
        @wait_before_reuse = 5
        @distance_min_from_player = 96
      when 353 # Shadow Doll 01 double rush
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @y_max_from_player = 48
        @distance_min_from_player = 128
        @distance_max_from_player = 400
      when 354 # Shadow Doll 01 shadow arrow
        @type = 11
        @args = [1]
        @wait_before_reuse = 10
        @life_count_min = 180
        @y_max_from_player = 192
        @distance_min_from_player = 288
      when 355 # Shadow Three-Tails Fox 01 attack
        @type = 10
        @wait_before_reuse = 12
      when 356 # Shadow Three-Tails Fox 01 2 bombs
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @distance_max_from_player = 256
      when 357 # Shadow Three-Tails Fox 01 4 flash bombs
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @distance_max_from_player = 256
      when 358 # Shadow Snow Youkai 01 explosion
        @type = 10
        @wait_before_reuse = 6
        @distance_max_from_player = 128
      when 359 # Shadow Snow Youkai 01 sonic rush
        @type = 11
        @args = [0]
        @wait_before_reuse = 26
        @life_count_min = 180
      when 360 # Shadow Snow Youkai 01 multi rush
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
        @y_max_from_player = 64
        @distance_max_from_player = 192
      when 361 # Fire Beast 01 attack
        @type = 10
        @wait_before_reuse = 8
        @distance_min_from_player = 128
      when 362 # Shadow Fire Beast 01 shadow balls
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
      when 363 # Shadow Fire Beast 01 shadow eruption
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @distance_max_from_player = 224
      when 364 # Shadow Fire Beast 01 : Void Sign : Shadow Conflagration
        @type = 12
        @args = [0]
        @wait_before_reuse = 40
        @life_count_min = 360
        @allies_max = 2
      when 365 # Shadow Wyvern 01 shadow breath
        @type = 10
        @wait_before_reuse = 7
        @y_max_from_player = 64
        @distance_max_from_player = 224
      when 366 # Shadow Wyvern 01 big shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @distance_min_from_player = 192
      when 367 # Shadow Wyvern 01 shadow aura
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @distance_max_from_player = 96
      when 368 # Shadow Wyvern 01 : The Shadow Dragon's Nest
        @type = 12
        @args = [0]
        @one_time_action = true
        @life_count_min = 450
        @allies_max = 1
      when 369 # Shadow Wyvern 01 : Dragon Sign : Wyvern's True Awakening
        @type = 12
        @args = [1]
        @wait_before_reuse = 40
        @life_count_min = 360
      when 370 # Shadow Wyvern 01 shadow breath hyper mode
        @type = 10
        @wait_before_reuse = 3
        @y_max_from_player = 64
        @distance_max_from_player = 224
      when 371 # Shadow Alice laser
        @type = 10
        @wait_before_reuse = 7
        @distance_min_from_player = 288
      when 372 # Shadow Alice sonic waves
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @y_max_from_player = 96
        @distance_max_from_player = 160
      when 373 # Shadow Alice goliath doll
        @type = 11
        @args = [1]
        @wait_before_reuse = 18
      when 374 # Shadow Alice +1 shadow doll
        @type = 11
        @args = [2]
        @wait_before_reuse = 32
        @life_count_min = 300
        @allies_max = 4
      when 375 # Shadow Cirno attack
        @type = 10
        @wait_before_reuse = 4
        @distance_min_from_player = 96
        @distance_max_from_player = 320
      when 376 # Shadow Cirno slide
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @on_ground = true
        @y_max_from_player = 64
        @distance_min_from_player = 64
        @distance_max_from_player = 224
      when 377 # Shadow Cirno spin crush
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @distance_max_from_player = 320
      when 378 # Shadow Cirno shadow frozen bullets
        @type = 11
        @args = [2]
        @wait_before_reuse = 36
        @life_count_min = 300
        @distance_min_from_player = 128
      when 379 # Shadow Meiling attack
        @type = 10
        @distance_max_from_player = 64
      when 380 # Shadow Meiling shadow waves
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_min_from_player = 192
      when 381 # Shadow Meiling shadow ball
        @type = 11
        @args = [1]
        @wait_before_reuse = 36
        @life_count_min = 300
        @distance_min_from_player = 96
      when 382 # Shadow Meiling shoulder hit
        @type = 11
        @args = [2]
        @wait_before_reuse = 12
        @distance_max_from_player = 64
      when 383 # Shadow Aya attack
        @type = 10
        @wait_before_reuse = 4
        @y_max_from_player = 64
        @distance_min_from_player = 96
      when 384 # Shadow Aya wind blades
        @type = 11
        @args = [0]
        @wait_before_reuse = 20
        @distance_min_from_player = 192
      when 385 # Shadow Aya range shot
        @type = 11
        @args = [1]
        @wait_before_reuse = 10
        @y_max_from_player = 64
        @distance_max_from_player = 128
      when 386 # Shadow Aya whirlwinds
        @type = 11
        @args = [2]
        @wait_before_reuse = 16
        @on_ground = true
        @y_max_from_player = 64
        @distance_min_from_player = 128
        @distance_max_from_player = 320
      when 387 # Shadow Utsuho attack
        @type = 10
        @wait_before_reuse = 8
        @on_ground = true
        @y_max_from_player = 64
      when 388 # Shadow Utsuho retreat shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_max_from_player = 160
      when 389 # Shadow Utsuho big shadow particle
        @type = 11
        @args = [1]
        @wait_before_reuse = 16
      when 390 # Shadow Utsuho pentagrams
        @type = 11
        @args = [2]
        @wait_before_reuse = 28
      when 391 # Shadow Youmu attack
        @type = 10
        @wait_before_reuse = 7
        @distance_max_from_player = 384
        @y_max_from_player = 64
      when 392 # Shadow Youmu rush
        @type = 11
        @args = [0]
        @wait_before_reuse = 18
        @distance_max_from_player = 240
        @y_max_from_player = 64
      when 393 # Shadow Youmu slash
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @distance_min_from_player = 64
        @distance_max_from_player = 160
        @y_max_from_player = 64
      when 394 # Shadow Youmu jump shot
        @type = 11
        @args = [2]
        @wait_before_reuse = 24
        @y_max_from_player = 64
        @distance_min_from_player = 128
      when 395 # Maid Fairy 02 rush
        @type = 10
        @wait_before_reuse = 10
      when 396 # Maid Fairy 02 knives
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_min_from_player = 192
      when 397 # Maid Fairy 02 lasers
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @distance_max_from_player = 256
      when 398 # Slime 03 crystals
        @type = 10
        @wait_before_reuse = 7
        @distance_min_from_player = 160
      when 399 # Slime 03 mini slimes
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @life_count_min = 240
        @distance_max_from_player = 320
      end
    elsif id < 500
      case id
      when 400 # Slime 03 duplication
        @type = 11
        @args = [1]
        @wait_before_reuse = 40
        @life_count_min = 180
        @allies_max = 4
      when 401 # Plush 01 rings
        @type = 10
        @wait_before_reuse = 8
        @y_max_from_player = 64
        @distance_max_from_player = 320
      when 402 # Plush 01 sound waves
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_max_from_player = 128
      when 403 # Plush 01 stop time
        @type = 11
        @args = [1]
        @wait_before_reuse = 16
        @life_count_min = 240
      when 404 # Centaur 01 shot
        @type = 10
        @wait_before_reuse = 10
        @distance_max_from_player = 320
      when 405 # Centaur 01 spear throw
        @type = 11
        @args = [0]
        @wait_before_reuse = 6
        @distance_min_from_player = 160
      when 406 # Centaur 01 ground spears
        @type = 11
        @args = [1]
        @wait_before_reuse = 18
        @on_ground = true
        @y_max_from_player = 64
        @distance_max_from_player = 384
      when 407 # Centaur 01 : Spear Stream
        @type = 12
        @args = [0]
        @wait_before_reuse = 30
        @life_count_min = 240
      when 408 # Lizard Youkai 02 attack
        @type = 10
        @wait_before_reuse = 12
      when 409 # Lizard Youkai 02 five blades
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @distance_min_from_player = 128
        @distance_max_from_player = 320
      when 410 # Lizard Youkai 02 slash
        @type = 11
        @args = [1]
        @wait_before_reuse = 3
        @y_max_from_player = 64
        @distance_max_from_player = 160
      when 411 # Lizard Youkai 02 buff
        @type = 11
        @args = [2]
        @wait_before_reuse = 36
        @life_count_min = 300
      when 412 # Lizard Youkai 02 hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @wait_before_reuse = 40
        @hp_max = 80
      when 413 # Yin Yang 10 attack 01
        @type = 11
        @args = [0]
        @wait_before_reuse = 3
      when 414 # Yin Yang 10 attack 02
        @type = 11
        @args = [1]
        @wait_before_reuse = 3
      when 415 # Yin Yang 10 attack 03
        @type = 11
        @args = [2]
        @wait_before_reuse = 3
      when 416 # Yin Yang 10 attack 04
        @type = 11
        @args = [3]
        @wait_before_reuse = 3
      when 417 # Yin Yang 10 attack 05
        @type = 11
        @args = [4]
        @wait_before_reuse = 3
      when 418 # Yin Yang 10 attack 06
        @type = 11
        @args = [5]
        @wait_before_reuse = 3
      when 419 # Yukari attack
        @type = 10
        @wait_before_reuse = 11
        @distance_max_from_player = 320
      when 420 # Yukari multi roll
        @type = 11
        @args = [0]
        @wait_before_reuse = 28
      when 421 # Yukari pentagram+kunais
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @distance_min_from_player = 128
      when 422 # Yukari umbrella rush
        @type = 11
        @args = [2]
        @wait_before_reuse = 32
        @hp_max = 87
      when 423 # Yukari teleportations+bombs
        @type = 11
        @args = [3]
        @wait_before_reuse = 44
        @hp_max = 75
        @allies_max = 1
      when 424 # Yukari missiles rain
        @type = 11
        @args = [4]
        @wait_before_reuse = 28
        @hp_max = 62
      when 425 # Yukari : Invocation Sign : Shadow Rift
        @type = 12
        @args = [0]
        @wait_before_reuse = 80
        @allies_max = 1
      when 426 # Yukari : Last Boundary : Shatter The Reality
        @type = 12
        @args = [1]
        @wait_before_reuse = 90
        @hp_max = 50
        @allies_max = 1
      when 427 # Yukari reactivate hyper mode
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @hp_max = 50
      when 428 # Giant Flower 01 waiting
        @type = -1
        @distance_min_from_player = 192
      when 429 # Giant Flower 01 attack
        @type = 10
        @wait_before_reuse = 6
        @distance_min_from_player = 192
      when 430 # Giant Flower 01 cursed shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_min_from_player = 192
      when 431 # Giant Flower 01 solar power
        @type = 11
        @args = [1]
        @wait_before_reuse = 40
        @life_count_min = 450
      when 432 # Giant Flower 01 hyper mode attack
        @type = 10
      when 433 # Giant Flower 01 hyper mode cursed shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 2
      when 434 # Bonefish 01 attack
        @type = 10
        @wait_before_reuse = 10
        @distance_max_from_player = 384
      when 435 # Bonefish 01 missiles
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
      when 436 # Bonefish 01 purifying aura
        @type = 11
        @args = [1]
        @wait_before_reuse = 24
        @distance_max_from_player = 160
        @life_count_min = 240
      when 437 # Flandre : Taboo : Four of A Kind
        @type = 12
        @args = [0]
        @wait_before_reuse = 36
      when 438 # Flandre : Colorful Sign : Rainbow Trap
        @type = 12
        @args = [1]
        @wait_before_reuse = 36
      when 439 # Flandre : Forbidden Barrage : Rupture
        @type = 12
        @args = [2]
        @wait_before_reuse = 36
      when 440 # Slime 04 shot
        @type = 10
        @wait_before_reuse = 10
        @distance_min_from_player = 160
      when 441 # Slime 04 mini slimes
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_max_from_player = 320
      when 442 # Slime 04 poisonous field
        @type = 11
        @args = [1]
        @wait_before_reuse = 16
      when 443 # Slime 04 duplication
        @type = 11
        @args = [2]
        @wait_before_reuse = 40
        @life_count_min = 180
        @allies_max = 4
      when 444 # Rin follow + shot
        @type = 10
        @distance_max_from_player = 640
      when 445 # Rin waves of shots
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
        @life_count_min = 180
        @distance_max_from_player = 480
      when 446 # Rin rush
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
        @life_count_min = 180
        @distance_max_from_player = 480
      when 447 # Rin teleportation
        @type = 11
        @args = [2]
        @wait_before_reuse = 6
        @distance_min_from_player = 640
        @distance_max_from_player = 9999
      when 448 # Rin : Vengeful Spirit : Path of the Dead
        @type = 12
        @args = [0]
        @wait_before_reuse = 30
        @life_count_min = 900
        @distance_max_from_player = 480
      when 449 # Shinigami's Orb 02 buff
        @type = 10
      when 450 # Shinigami's Orb 03 explosion
        @type = 10
      when 451 # Shinigami's Orb 04 puncture
        @type = 10
      when 452 # Angel Fairy 01 normal shot
        @type = 10
        @wait_before_reuse = 10
        @distance_min_from_player = 256
      when 453 # Angel Fairy 01 retreat shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 16
        @distance_max_from_player = 160
      when 454 # Angel Fairy 01 elemental zone
        @type = 11
        @args = [1]
        @wait_before_reuse = 12
      when 455 # Plush 02 rings
        @type = 10
        @wait_before_reuse = 8
        @y_max_from_player = 64
        @distance_max_from_player = 320
      when 456 # Plush 02 sound waves
        @type = 11
        @args = [0]
        @wait_before_reuse = 10
        @distance_max_from_player = 128
      when 457 # Plush 02 stop time + lasers
        @type = 11
        @args = [1]
        @wait_before_reuse = 20
        @life_count_min = 240
      when 458 # Plush 02 stop time + explosions
        @type = 11
        @args = [2]
        @wait_before_reuse = 20
        @life_count_min = 480
      when 459 # Celestial Beast 01 lightning bullets
        @type = 11
        @args = [0]
        @wait_before_reuse = 7
        @distance_min_from_player = 192
      when 460 # Celestial Beast 01 heal + regen
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @life_count_min = 300
        @distance_max_from_player = 256
      when 461 # Celestial Beast 01 thunder arrow
        @type = 11
        @args = [2]
        @wait_before_reuse = 10
        @y_max_from_player = 64
        @distance_min_from_player = 96
        @distance_max_from_player = 384
      when 462 # Celestial Guardian 01 knives
        @type = 10
        @wait_before_reuse = 12
        @distance_max_from_player = 384
      when 463 # Celestial Guardian 01 lightning strikes
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
      when 464 # Celestial Guardian 01 spear
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @y_max_from_player = 64
        @distance_max_from_player = 224
      when 465 # Celestial Guardian 01 : Guardian's Last Duty : ERADICATION!
        @type = 12
        @args = [0]
        @wait_before_reuse = 20
        @hp_max = 50
      when 466 # Celestial Guardian 01 hyper mode knives
        @type = 10
        @wait_before_reuse = 4
        @distance_max_from_player = 384
      when 467 # Celestial Guardian 01 hyper mode lightning strikes
        @type = 11
        @args = [0]
        @wait_before_reuse = 4
      when 468 # Celestial Guardian 01 hyper mode spear
        @type = 11
        @args = [1]
        @wait_before_reuse = 4
        @y_max_from_player = 64
        @distance_max_from_player = 224
      when 469 # Celestial Whale 01 lasers
        @type = 10
        @wait_before_reuse = 10
        @y_max_from_player = 128
        @distance_min_from_player = 288
      when 470 # Celestial Whale 01 howling
        @type = 11
        @args = [0]
        @wait_before_reuse = 14
        @distance_max_from_player = 384
      when 471 # Celestial Whale 01 celestial fishes
        @type = 11
        @args = [1]
        @wait_before_reuse = 18
        @distance_max_from_player = 256
      when 472 # Celestial Whale 01 +1 ying yang
        @type = 11
        @args = [2]
        @wait_before_reuse = 24
        @distance_max_from_player = 320
      when 473 # Celestial Whale 01 : Illuminations
        @type = 12
        @args = [0]
        @wait_before_reuse = 40
        @hp_max = 75
      when 474 # Yin Yang 11 attack
        @type = 10
        @one_time_action = true
      when 475 # Komachi attack
        @type = 10
        @wait_before_reuse = 5
        @distance_max_from_player = 128
      when 476 # Komachi coins
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @y_max_from_player = 64
        @distance_min_from_player = 128
        @distance_max_from_player = 384
      when 477 # Komachi boat
        @type = 11
        @args = [1]
        @wait_before_reuse = 24
        @distance_min_from_player = 128
      when 478 # Komachi wandering souls
        @type = 11
        @args = [2]
        @wait_before_reuse = 24
        @hp_max = 87
      when 479 # Komachi pentagrams
        @type = 11
        @args = [3]
        @wait_before_reuse = 18
        @hp_max = 75
      when 480 # Komachi regen
        @type = 11
        @args = [4]
        @wait_before_reuse = 30
        @hp_max = 75
      when 481 # Komachi : Death Sign : The Great Reaper
        @type = 12
        @args = [0]
        @wait_before_reuse = 72
        @hp_max = 75
      when 482 # Komachi : Millionaire!
        @type = 12
        @args = [1]
        @wait_before_reuse = 72
        @hp_max = 62
      when 483 # Tenshi attack
        @type = 10
        @wait_before_reuse = 10
        @y_max_from_player = 64
        @distance_max_from_player = 160
      when 484 # Tenshi blade throw
        @type = 11
        @args = [0]
        @wait_before_reuse = 12
        @y_max_from_player = 64
        @distance_min_from_player = 256
      when 485 # Tenshi earth waves
        @type = 11
        @args = [1]
        @wait_before_reuse = 24
      when 486 # Tenshi crush
        @type = 11
        @args = [2]
        @wait_before_reuse = 16
        @distance_max_from_player = 320
      when 487 # Tenshi sword combo
        @type = 11
        @args = [3]
        @wait_before_reuse = 24
        @hp_max = 75
      when 488 # Tenshi : Earth Sign : Heaven Pillars
        @type = 12
        @args = [0]
        @wait_before_reuse = 88
        @hp_max = 62
      when 489 # Tenshi hyper mode hp < 25%
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @hp_max = 25
      when 490 # Tenshi hyper mode ally = 0
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @allies_max = 0
      when 491 # Iku attack
        @type = 10
        @wait_before_reuse = 10
        @y_max_from_player = 64
        @distance_max_from_player = 128
      when 492 # Iku shot
        @type = 11
        @args = [0]
        @wait_before_reuse = 8
        @y_max_from_player = 200
        @distance_min_from_player = 256
      when 493 # Iku teleportation
        @type = 11
        @args = [1]
        @wait_before_reuse = 14
        @distance_max_from_player = 96
      when 494 # Iku lightning ball
        @type = 11
        @args = [2]
        @wait_before_reuse = 20
      when 495 # Iku electric arc
        @type = 11
        @args = [3]
        @wait_before_reuse = 32
        @hp_max = 75
      when 496 # Iku : Celestial Art : Lethal Thunder Ring
        @type = 12
        @args = [1]
        @wait_before_reuse = 88
        @hp_max = 62
      when 497 # Iku hyper mode hp < 25%
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @hp_max = 25
      when 498 # Iku hyper mode ally = 0
        @type = 6
        @force_next_actions = [[0, 1]]
        @force_max_tries = 1
        @allies_max = 0
      end
    end
  end
end