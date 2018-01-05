module Math
  
  module_function
  
  def min(x, max_x)
    x < max_x ? x : max_x 
  end
  
  def max(x, min_x)
    x > min_x ? x : min_x
  end
  
  def middle(min_x, x, max_x)
    x > min_x ? x < max_x ? x : max_x : min_x
  end
  
  def ang_val(rad_val)
    return (rad_val*180/PI)
  end
  
  def rad_val(ang_val)
    return (ang_val*PI/180)
  end
end