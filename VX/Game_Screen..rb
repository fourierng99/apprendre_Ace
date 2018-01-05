class Game_Screen
  
  attr_reader   :brightness
  attr_reader   :tone
  attr_reader   :flash_color
  attr_reader   :shake_owner
  attr_reader   :shake_x
  attr_reader   :shake_y
  attr_reader   :weather_type
  attr_reader   :weather_max
  attr_reader   :fog_bitmap
  attr_reader   :fog_opacity
  attr_reader   :fog_x_speed
  attr_reader   :fog_y_speed
  
  def initialize
    clear
  end
  
  def clear
    @brightness = 255
    @fadeout_duration = 0
    @fadein_duration = 0
    @tone = Tone.new(0, 0, 0, 0)
    @tone_target = Tone.new(0, 0, 0, 0)
    @tone_duration = 0
    @flash_color = Color.new(0, 0, 0, 0)
    @flash_duration = 0
    clear_shake
    @weather_type = 0
    @weather_max = 0.0
    @weather_type_target = 0
    @weather_max_target = 0.0
    @weather_duration = 0
    @fog_bitmap = nil
    @fog_opacity = 0
    @fog_x_speed = 0.0
    @fog_y_speed = 0.0
  end
  
  def clear_shake
    @shake_owner = nil
    @shake_power = 0
    @shake_speed = 0
    @shake_duration = 0
    @shake_direction = 1
    @shake_x = 0
    @shake_y = 0
    @shake_power_random = false
    @shake_speed_random = false
    @shake_direction_random = false
  end
  
  def clear_flash
    @flash_duration = 0
    @flash_color = Color.new(0, 0, 0, 0)
  end
  
  def clear_fog
    @fog_bitmap = nil
    @fog_opacity = 0
    @fog_x_speed = 0.0
    @fog_y_speed = 0.0
  end
  
  def start_fadeout(duration)
    @fadeout_duration = duration
    @fadein_duration = 0
  end
  
  def start_fadein(duration)
    @fadein_duration = duration
    @fadeout_duration = 0
  end
  
  def black_screen
    @brightness = 0
    @fadein_duration = 0
    @fadeout_duration = 0
  end
  
  def start_tone_change(tone, duration)
    @tone_target = tone.clone
    @tone_duration = duration
    if @tone_duration == 0
      @tone = @tone_target.clone
    end
  end
  
  def start_flash(color, duration)
    @flash_color = color.clone
    @flash_duration = duration
  end
  
  def start_shake(args) # power, speed, duration, direction, owner
    return if @shake_duration > args[2]
    clear_shake
    @shake_owner = args[4]
    @shake_duration = args[2]
    if args[0] == 0
      @shake_power = rand(9) + 1
      @shake_power_random = true
    else
      @shake_power = args[0]
      @shake_power_random = false
    end
    if args[1] == 0
      @shake_speed = rand(9) + 1
      @shake_speed_random = true
    else
      @shake_speed = args[1]
      @shake_speed_random = false
    end
    if args[3] == 0
      @shake_direction_random = true
    else
      if @shake_direction != args[3] and @shake_direction != (10 - args[3])
        @shake_direction = args[3]
        @shake_x = 0
        @shake_y = 0
      end
      @shake_direction_random = false
    end
  end
  
  def weather(type, power, duration)
    @weather_type_target = type
    if @weather_type_target != 0
      @weather_type = @weather_type_target
    end
    if @weather_type_target == 0
      @weather_max_target = 0.0
    else
      @weather_max_target = (power + 1) * 8.0
    end
    @weather_duration = duration
    if @weather_duration == 0
      @weather_type = @weather_type_target
      @weather_max = @weather_max_target
    end
  end
  
  def save_fog(bitmap, opacity, x_speed, y_speed)
    @fog_bitmap = bitmap
    @fog_opacity = opacity
    @fog_x_speed = x_speed
    @fog_y_speed = y_speed
  end
  
  def update
    update_fadeout
    update_fadein
    update_tone
    update_flash
    update_shake
    update_weather
  end
  
  def update_fadeout
    if @fadeout_duration >= 1
      d = @fadeout_duration
      @brightness = (@brightness * (d - 1)) / d
      @fadeout_duration -= 1
    end
  end
  
  def update_fadein
    if @fadein_duration >= 1
      d = @fadein_duration
      @brightness = (@brightness * (d - 1) + 255) / d
      @fadein_duration -= 1
    end
  end
  
  def update_tone
    if @tone_duration >= 1
      d = @tone_duration
      @tone.red = (@tone.red * (d - 1) + @tone_target.red) / d
      @tone.green = (@tone.green * (d - 1) + @tone_target.green) / d
      @tone.blue = (@tone.blue * (d - 1) + @tone_target.blue) / d
      @tone.gray = (@tone.gray * (d - 1) + @tone_target.gray) / d
      @tone_duration -= 1
    end
  end
  
  def update_flash
    if @flash_duration > 0
      d = @flash_duration
      @flash_color.alpha = @flash_color.alpha * (d - 1) / d
      @flash_duration -= 1
    end
  end
  
  def update_shake
    if @shake_duration != 0 or @shake_x != 0 or @shake_y != 0
      return if $game_temp.stop_time_count > 0
      delta = (@shake_power * @shake_speed) / 10.0
      if @shake_x.abs < delta and @shake_y.abs < delta
        if @shake_power_random == true
          @shake_power = rand(9) + 1
        end
        if @shake_speed_random == true
          @shake_speed = rand(9) + 1
        end
        if @shake_direction_random == true
          @shake_direction = rand(8) + 1
          @shake_direction += 1 if @shake_direction > 4
        end
        delta = (@shake_power * @shake_speed) / 10.0
        @shake_x = 0
        @shake_y = 0
      end
      if @shake_x.abs > @shake_power * 2 or @shake_y.abs > @shake_power * 2
        @shake_direction = 10 - @shake_direction
      end
      if @shake_duration > 0
        @shake_duration -= 1
      end
      if @shake_duration == 0 and @shake_x.abs <= delta and @shake_y.abs <= delta
        @shake_x = 0
        @shake_y = 0
      else
        @shake_x += delta if @shake_direction % 3 == 0
        @shake_x -= delta if (@shake_direction + 2) % 3 == 0
        @shake_y += delta if @shake_direction < 4
        @shake_y -= delta if @shake_direction > 6
      end
    end
  end
  
  def update_weather
    if @weather_duration >= 1
      d = @weather_duration
      @weather_max = (@weather_max * (d - 1) + @weather_max_target) / d
      @weather_duration -= 1
      if @weather_duration == 0
        @weather_type = @weather_type_target
      end
    end
  end
end
