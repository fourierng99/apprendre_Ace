class Game_Action
  
  attr_reader   :id
  attr_reader   :type
  attr_reader   :args
  attr_reader   :force_next_actions
  attr_reader   :force_max_tries
  attr_reader   :one_time_action
  attr_reader   :wait_before_reuse
  attr_reader   :on_ground
  attr_reader   :hp_min
  attr_reader   :hp_max
  attr_reader   :life_count_min
  attr_reader   :life_count_max
  attr_reader   :allies_min
  attr_reader   :allies_max
  attr_reader   :y_max_from_player
  attr_reader   :distance_min_from_player
  attr_reader   :distance_max_from_player
  
  def initialize(id)
    @id = id
    @type = 0
    @args = []
    @force_next_actions = {}
    @force_max_tries = 0
    # -1: rien
    # 0: déplacement -> args[0] = 0: toward player, 
    # args[0] = 1: away from player
    # args[0] = 2: to x = args[1], y = args[2]
    # 1: déplacement rapide
    # 2: dégagement
    # 3: dégagement rapide
    # 4: saut
    # 5: garde
    # 6: hyper_mode
    # 10: attaque normale
    # 11: quickskill -> @quickskill_id[args[0]]
    # 12: spellcard -> @spellcard_id[args[0]]
    @one_time_action = false
    @wait_before_reuse = 0
    @on_ground = false
    @hp_min = 0
    @hp_max = 101
    @life_count_min = 0
    @life_count_max = 0
    @allies_min = 0
    @allies_max = 99
    @y_max_from_player = 1024
    @distance_min_from_player = 0
    @distance_max_from_player = 1024
    setup(id)
  end
end