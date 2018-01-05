class Game_Stage_Info
  
  attr_reader   :id
  attr_reader   :souls
  attr_reader   :silver_chest_id
  attr_reader   :index
  attr_reader   :last_stage
  attr_reader   :secret_stage
  attr_reader   :survival
  attr_reader   :chaos_only
  
  def initialize(id)
    @id = id
    @soul_struct = Struct.new(:id, :condition_type, :chaos_mode, :time)
    #condition_type : 0=finish_stage, 1=hidden, 2=speedrun, 3=no_spellcard
    #4=no_death, 5=no_switch, 6=survival
    @souls = []
    @silver_chest_id = []
    @index = 0
    @last_stage = false
    @secret_stage = false
    @survival = false
    @chaos_only = false
    setup(id)
  end
  
  def setup(id)
    case id
    when 1
      @souls.push(@soul_struct.new(1, 0, false, 0))
      @souls.push(@soul_struct.new(101, 0, true, 0))
      @souls.push(@soul_struct.new(102, 4, true, 0))
      @index = 1
    when 2
      @souls.push(@soul_struct.new(2, 0, false, 0))
      @souls.push(@soul_struct.new(103, 0, true, 0))
      @index = 2
    when 3
      @souls.push(@soul_struct.new(3, 0, false, 0))
      @souls.push(@soul_struct.new(4, 2, false, 270))
      @souls.push(@soul_struct.new(104, 0, true, 0))
      @souls.push(@soul_struct.new(105, 3, true, 0))
      @index = 3
    when 4
      @souls.push(@soul_struct.new(5, 0, false, 0))
      @souls.push(@soul_struct.new(6, 1, false, 0))
      @souls.push(@soul_struct.new(106, 0, true, 0))
      @souls.push(@soul_struct.new(107, 2, true, 390))
      @index = 4
      @last_stage = true
    when 5
      @souls.push(@soul_struct.new(7, 0, false, 0))
      @souls.push(@soul_struct.new(8, 4, false, 0))
      @souls.push(@soul_struct.new(109, 0, true, 0))
      @souls.push(@soul_struct.new(110, 3, true, 0))
      @silver_chest_id = [29, 4, "A"]
      @index = 1
    when 6
      @souls.push(@soul_struct.new(9, 0, false, 0))
      @souls.push(@soul_struct.new(10, 1, false, 0))
      @souls.push(@soul_struct.new(111, 0, true, 0))
      @index = 2
    when 7
      @souls.push(@soul_struct.new(11, 0, false, 0))
      @souls.push(@soul_struct.new(12, 2, false, 270))
      @souls.push(@soul_struct.new(112, 0, true, 0))
      @souls.push(@soul_struct.new(113, 5, true, 0))
      @silver_chest_id = [43, 1, "A"]
      @index = 3
    when 8
      @souls.push(@soul_struct.new(13, 0, false, 0))
      @souls.push(@soul_struct.new(14, 1, false, 0))
      @souls.push(@soul_struct.new(114, 0, true, 0))
      @souls.push(@soul_struct.new(115, 2, true, 300))
      @index = 4
    when 9
      @souls.push(@soul_struct.new(15, 0, false, 0))
      @souls.push(@soul_struct.new(16, 1, false, 0))
      @souls.push(@soul_struct.new(116, 0, true, 0))
      @index = 5
      @last_stage = true
    when 10
      @souls.push(@soul_struct.new(17, 0, false, 0))
      @souls.push(@soul_struct.new(18, 2, false, 330))
      @souls.push(@soul_struct.new(119, 0, true, 0))
      @souls.push(@soul_struct.new(120, 4, true, 0))
      @index = 1
    when 11
      @souls.push(@soul_struct.new(19, 0, false, 0))
      @souls.push(@soul_struct.new(20, 1, false, 0))
      @souls.push(@soul_struct.new(21, 1, false, 0))
      @souls.push(@soul_struct.new(121, 0, true, 0))
      @souls.push(@soul_struct.new(122, 3, true, 0))
      @index = 2
    when 12
      @souls.push(@soul_struct.new(22, 0, false, 0))
      @souls.push(@soul_struct.new(23, 3, false, 0))
      @souls.push(@soul_struct.new(123, 0, true, 0))
      @souls.push(@soul_struct.new(124, 2, true, 300))
      @silver_chest_id = [74, 10, "A"]
      @index = 3
    when 13
      @souls.push(@soul_struct.new(24, 0, false, 0))
      @souls.push(@soul_struct.new(25, 1, false, 0))
      @souls.push(@soul_struct.new(26, 1, false, 0))
      @souls.push(@soul_struct.new(125, 0, true, 0))
      @souls.push(@soul_struct.new(126, 4, true, 0))
      @index = 4
    when 14
      @souls.push(@soul_struct.new(27, 0, false, 0))
      @souls.push(@soul_struct.new(28, 1, false, 0))
      @souls.push(@soul_struct.new(127, 0, true, 0))
      @souls.push(@soul_struct.new(128, 3, true, 0))
      @index = 5
    when 15
      @souls.push(@soul_struct.new(29, 0, false, 0))
      @souls.push(@soul_struct.new(30, 4, false, 0))
      @souls.push(@soul_struct.new(129, 0, true, 0))
      @silver_chest_id = [95, 3, "A"]
      @index = 6
      @last_stage = true
    when 16
      @souls.push(@soul_struct.new(31, 0, false, 0))
      @souls.push(@soul_struct.new(32, 3, false, 0))
      @souls.push(@soul_struct.new(33, 1, false, 0))
      @souls.push(@soul_struct.new(133, 0, true, 0))
      @souls.push(@soul_struct.new(134, 4, true, 0))
      @silver_chest_id = [103, 3, "A"]
      @index = 1
    when 17
      @souls.push(@soul_struct.new(34, 0, false, 0))
      @souls.push(@soul_struct.new(35, 1, false, 0))
      @souls.push(@soul_struct.new(135, 0, true, 0))
      @souls.push(@soul_struct.new(136, 2, true, 270))
      @index = 2
    when 18
      @souls.push(@soul_struct.new(36, 0, false, 0))
      @souls.push(@soul_struct.new(37, 2, false, 180))
      @souls.push(@soul_struct.new(38, 1, false, 0))
      @souls.push(@soul_struct.new(137, 0, true, 0))
      @souls.push(@soul_struct.new(138, 3, true, 0))
      @index = 3
    when 19
      @souls.push(@soul_struct.new(39, 0, false, 0))
      @souls.push(@soul_struct.new(40, 1, false, 0))
      @souls.push(@soul_struct.new(139, 0, true, 0))
      @souls.push(@soul_struct.new(140, 5, true, 0))
      @index = 4
    when 20
      @souls.push(@soul_struct.new(41, 0, false, 0))
      @souls.push(@soul_struct.new(42, 5, false, 0))
      @souls.push(@soul_struct.new(43, 1, false, 0))
      @souls.push(@soul_struct.new(141, 0, true, 0))
      @souls.push(@soul_struct.new(142, 2, true, 300))
      @silver_chest_id = [127, 12, "A"]
      @index = 5
    when 21
      @souls.push(@soul_struct.new(44, 0, false, 0))
      @souls.push(@soul_struct.new(45, 1, false, 0))
      @souls.push(@soul_struct.new(46, 1, false, 0))
      @souls.push(@soul_struct.new(143, 0, true, 0))
      @souls.push(@soul_struct.new(144, 4, true, 0))
      @index = 6
      @last_stage = true
    when 22
      @souls.push(@soul_struct.new(47, 0, false, 0))
      @souls.push(@soul_struct.new(48, 2, false, 210))
      @souls.push(@soul_struct.new(147, 0, true, 0))
      @souls.push(@soul_struct.new(148, 3, true, 0))
      @index = 1
    when 23
      @souls.push(@soul_struct.new(49, 0, false, 0))
      @souls.push(@soul_struct.new(50, 4, false, 0))
      @souls.push(@soul_struct.new(51, 1, false, 0))
      @souls.push(@soul_struct.new(149, 0, true, 0))
      @souls.push(@soul_struct.new(150, 2, true, 300))
      @index = 2
    when 24
      @souls.push(@soul_struct.new(52, 0, false, 0))
      @souls.push(@soul_struct.new(53, 1, false, 0))
      @souls.push(@soul_struct.new(151, 0, true, 0))
      @souls.push(@soul_struct.new(152, 4, true, 0))
      @index = 3
    when 25
      @souls.push(@soul_struct.new(54, 0, false, 0))
      @souls.push(@soul_struct.new(55, 1, false, 0))
      @souls.push(@soul_struct.new(56, 1, false, 0))
      @souls.push(@soul_struct.new(153, 0, true, 0))
      @souls.push(@soul_struct.new(154, 5, true, 0))
      @silver_chest_id = [170, 4, "A"]
      @index = 4
    when 26
      @souls.push(@soul_struct.new(57, 0, false, 0))
      @souls.push(@soul_struct.new(58, 3, false, 0))
      @souls.push(@soul_struct.new(59, 1, false, 0))
      @souls.push(@soul_struct.new(155, 0, true, 0))
      @souls.push(@soul_struct.new(156, 2, true, 240))
      @index = 5
    when 27
      @souls.push(@soul_struct.new(60, 0, false, 0))
      @souls.push(@soul_struct.new(61, 1, false, 0))
      @souls.push(@soul_struct.new(62, 1, false, 0))
      @souls.push(@soul_struct.new(157, 0, true, 0))
      @index = 6
      @last_stage = true
    when 28
      @souls.push(@soul_struct.new(63, 0, false, 0))
      @souls.push(@soul_struct.new(64, 1, false, 0))
      @souls.push(@soul_struct.new(161, 0, true, 0))
      @souls.push(@soul_struct.new(162, 2, true, 210))
      @index = 1
    when 29
      @souls.push(@soul_struct.new(65, 0, false, 0))
      @souls.push(@soul_struct.new(66, 5, false, 0))
      @souls.push(@soul_struct.new(67, 1, false, 0))
      @souls.push(@soul_struct.new(163, 0, true, 0))
      @souls.push(@soul_struct.new(164, 4, true, 0))
      @silver_chest_id = [195, 1, "A"]
      @index = 2
    when 30
      @souls.push(@soul_struct.new(68, 0, false, 0))
      @souls.push(@soul_struct.new(69, 3, false, 0))
      @souls.push(@soul_struct.new(70, 1, false, 0))
      @souls.push(@soul_struct.new(165, 0, true, 0))
      @souls.push(@soul_struct.new(166, 3, true, 0))
      @index = 3
    when 31
      @souls.push(@soul_struct.new(71, 0, false, 0))
      @souls.push(@soul_struct.new(72, 2, false, 240))
      @souls.push(@soul_struct.new(167, 0, true, 0))
      @souls.push(@soul_struct.new(168, 5, true, 0))
      @silver_chest_id = [208, 1, "A"]
      @index = 4
    when 32
      @souls.push(@soul_struct.new(73, 0, false, 0))
      @souls.push(@soul_struct.new(74, 1, false, 0))
      @souls.push(@soul_struct.new(75, 1, false, 0))
      @souls.push(@soul_struct.new(169, 0, true, 0))
      @souls.push(@soul_struct.new(170, 3, true, 0))
      @index = 5
    when 33
      @souls.push(@soul_struct.new(76, 0, false, 0))
      @souls.push(@soul_struct.new(77, 1, false, 0))
      @souls.push(@soul_struct.new(78, 1, false, 0))
      @souls.push(@soul_struct.new(171, 0, true, 0))
      @index = 6
      @last_stage = true
    when 34
      @souls.push(@soul_struct.new(79, 0, false, 0))
      @souls.push(@soul_struct.new(80, 1, false, 0))
      @souls.push(@soul_struct.new(175, 0, true, 0))
      @souls.push(@soul_struct.new(176, 3, true, 0))
      @silver_chest_id = [242, 2, "A"]
      @index = 1
    when 35
      @souls.push(@soul_struct.new(81, 0, false, 0))
      @souls.push(@soul_struct.new(82, 3, false, 0))
      @souls.push(@soul_struct.new(177, 0, true, 0))
      @souls.push(@soul_struct.new(178, 4, true, 0))
      @silver_chest_id = [245, 2, "A"]
      @index = 2
    when 36
      @souls.push(@soul_struct.new(83, 0, false, 0))
      @souls.push(@soul_struct.new(84, 2, false, 270))
      @souls.push(@soul_struct.new(179, 0, true, 0))
      @index = 3
    when 37
      @souls.push(@soul_struct.new(85, 0, false, 0))
      @souls.push(@soul_struct.new(86, 1, false, 0))
      @souls.push(@soul_struct.new(180, 0, true, 0))
      @souls.push(@soul_struct.new(181, 2, true, 240))
      @silver_chest_id = [256, 2, "A"]
      @index = 4
    when 38
      @souls.push(@soul_struct.new(87, 0, false, 0))
      @souls.push(@soul_struct.new(88, 2, false, 330))
      @souls.push(@soul_struct.new(182, 0, true, 0))
      @souls.push(@soul_struct.new(183, 5, true, 0))
      @index = 5
    when 39
      @souls.push(@soul_struct.new(89, 0, false, 0))
      @souls.push(@soul_struct.new(90, 4, false, 0))
      @souls.push(@soul_struct.new(184, 0, true, 0))
      @souls.push(@soul_struct.new(185, 3, true, 0))
      @index = 6
    when 40
      @souls.push(@soul_struct.new(91, 0, false, 0))
      @souls.push(@soul_struct.new(92, 1, false, 0))
      @souls.push(@soul_struct.new(93, 1, false, 0))
      @souls.push(@soul_struct.new(94, 1, false, 0))
      @souls.push(@soul_struct.new(186, 0, true, 0))
      @index = 7
      @last_stage = true
    when 41
      @souls.push(@soul_struct.new(108, 0, true, 0))
      @silver_chest_id = [283, 3, "A"]
      @secret_stage = true
      @chaos_only = true
    when 42
      @souls.push(@soul_struct.new(117, 0, true, 0))
      @souls.push(@soul_struct.new(118, 1, true, 0))
      @silver_chest_id = [292, 3, "A"]
      @secret_stage = true
      @chaos_only = true
    when 43
      @souls.push(@soul_struct.new(130, 0, true, 0))
      @souls.push(@soul_struct.new(131, 5, true, 0))
      @souls.push(@soul_struct.new(132, 1, true, 0))
      @silver_chest_id = [302, 2, "A"]
      @secret_stage = true
      @chaos_only = true
    when 44
      @souls.push(@soul_struct.new(145, 0, true, 0))
      @souls.push(@soul_struct.new(146, 1, true, 0))
      @silver_chest_id = [308, 2, "A"]
      @secret_stage = true
      @chaos_only = true
    when 45
      @souls.push(@soul_struct.new(158, 0, true, 0))
      @souls.push(@soul_struct.new(159, 3, true, 0))
      @souls.push(@soul_struct.new(160, 1, true, 0))
      @silver_chest_id = [315, 2, "A"]
      @secret_stage = true
      @chaos_only = true
    when 46
      @souls.push(@soul_struct.new(172, 0, true, 0))
      @souls.push(@soul_struct.new(173, 2, true, 360))
      @souls.push(@soul_struct.new(174, 1, true, 0))
      @silver_chest_id = [320, 2, "A"]
      @secret_stage = true
      @chaos_only = true
    when 47
      @souls.push(@soul_struct.new(187, 0, true, 0))
      @souls.push(@soul_struct.new(188, 1, true, 0))
      @silver_chest_id = [329, 2, "A"]
      @secret_stage = true
      @chaos_only = true
    when 48
      @souls.push(@soul_struct.new(189, 0, true, 0))
      @souls.push(@soul_struct.new(190, 4, true, 0))
      @silver_chest_id = [339, 2, "A"]
      @index = 1
      @chaos_only = true
    when 49
      @souls.push(@soul_struct.new(191, 0, true, 0))
      @souls.push(@soul_struct.new(192, 1, true, 0))
      @index = 2
      @chaos_only = true
    when 50
      @souls.push(@soul_struct.new(193, 0, true, 0))
      @souls.push(@soul_struct.new(194, 1, true, 0))
      @index = 3
      @last_stage = true
      @chaos_only = true
    when 101
      @souls.push(@soul_struct.new(95, 6, false, 0))
      @souls.push(@soul_struct.new(96, 6, false, 0))
      @souls.push(@soul_struct.new(97, 6, false, 0))
      @souls.push(@soul_struct.new(98, 6, false, 0))
      @souls.push(@soul_struct.new(99, 6, false, 0))
      @souls.push(@soul_struct.new(100, 6, false, 0))
      @souls.push(@soul_struct.new(195, 6, true, 0))
      @souls.push(@soul_struct.new(196, 6, true, 0))
      @souls.push(@soul_struct.new(197, 6, true, 0))
      @souls.push(@soul_struct.new(198, 6, true, 0))
      @souls.push(@soul_struct.new(199, 6, true, 0))
      @souls.push(@soul_struct.new(200, 6, true, 0))
      @survival = true
    end
  end
  
  def name
    return @survival ? lang::G_STAGE_INFO[3] : @secret_stage ? lang::G_STAGE_INFO[2] : 
    @last_stage ? lang::G_STAGE_INFO[1] : lang::G_STAGE_INFO[0] + @index.to_s
  end
end