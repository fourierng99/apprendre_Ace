class Game_System
  
  attr_accessor :last_slot
  attr_accessor :language
  attr_accessor :preload_graphics
  attr_accessor :advanced_effects
  attr_accessor :music_volume
  attr_accessor :sound_volume
  attr_accessor :damage_display
  attr_accessor :enable_player_damage
  attr_accessor :enable_enemy_damage
  attr_accessor :enable_enemy_hp_bar
  attr_accessor :keyboard_setup
  attr_accessor :joystick_setup
  
  def initialize
    @last_slot = 0
    @language = 0
    @preload_graphics = 1
    @advanced_effects = true
    @music_volume = 80
    @sound_volume = 80
    @damage_display = 0
    @enable_player_damage = true
    @enable_enemy_damage = true
    @enable_enemy_hp_bar = true
    default_keyboard
    default_joystick
    input_setup
  end
  
  def setup
    @language = 0 if @language == nil
    input_setup
  end
  
  def load_special_data
    $data_weapons = @language == 0 ? 
    load_data("Data/Weapons.rvdata") : load_data("Data/Weapons_FR.rvdata")
    $data_armors = @language == 0 ? 
    load_data("Data/Armors.rvdata") : load_data("Data/Armors_FR.rvdata")
  end
  
  def input_setup
    keys = Hash.new {|h,k| h[k] = [[], []]}
    @joystick_setup.each {|i,j| keys[i][0] = j}
    @keyboard_setup.each {|i,j| keys[i][1] = j}
    Input.setup(keys)
  end
  
  def default_keyboard
    @keyboard_setup = {
    :DOWN  => [:Down],
    :LEFT  => [:Left],
    :RIGHT => [:Right],
    :UP    => [:Up],
    :A     => [:LShift],
    :B     => [:X],
    :C     => [:Space],
    :X     => [:C],
    :Y     => [:S],
    :L     => [:Q],
    :R     => [:W],
    :CTRL  => [:Control],
    :F5  => [:F5],
    :F6  => [:F6],
    :F7  => [:F7]
    }
  end

  def default_joystick
    @joystick_setup = {
    :DOWN  => [Gamepad::Axis2_1, Gamepad::PovDown],
    :LEFT  => [Gamepad::Axis1_0, Gamepad::PovLeft],
    :RIGHT => [Gamepad::Axis1_1, Gamepad::PovRight],
    :UP    => [Gamepad::Axis2_0, Gamepad::PovUp],
    :A     => [Gamepad::Button1],
    :B     => [Gamepad::Button2],
    :C     => [Gamepad::Button3],
    :X     => [Gamepad::Button4],
    :Y     => [Gamepad::Button5],
    :L     => [Gamepad::Button7],
    :R     => [Gamepad::Button8]
    }
  end
  
  def save_settings
    file = File.open("Settings.rvdata", "wb")
    Marshal.dump(self, file)
    file.close
  end
end