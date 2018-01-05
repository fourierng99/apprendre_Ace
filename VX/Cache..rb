module Cache
  
  def self.character(filename)
    load_bitmap("Graphics/Characters/", filename)
  end
  
  def self.erase_character(filename)
    erase_bitmap("Graphics/Characters/", filename)
  end
      
  def self.face(filename)
    load_bitmap("Graphics/Faces/", filename)
  end
  
  def self.parallax(filename)
    load_bitmap("Graphics/Parallaxes/", filename)
  end
  
  def self.picture(filename)
    load_bitmap("Graphics/Pictures/", filename)
  end
  
  def self.system(filename)
    load_bitmap("Graphics/System/", filename)
  end
  
  def self.clear
    @cache = {} if @cache == nil
    @cache.clear
    GC.start
  end
  
  def self.load_bitmap(folder_name, filename, hue = 0)
    @cache = {} if @cache == nil
    path = folder_name + filename
    if not @cache.include?(path) or @cache[path].disposed?
      if filename.empty?
        @cache[path] = Bitmap.new(32, 32)
      else
        @cache[path] = Bitmap.new(path)
      end
    end
    if hue == 0
      return @cache[path]
    else
      key = [path, hue]
      if not @cache.include?(key) or @cache[key].disposed?
        @cache[key] = @cache[path].clone
        @cache[key].hue_change(hue)
      end
      return @cache[key]
    end
  end
  
  def self.erase_bitmap(folder_name, filename)
    path = folder_name + filename
    if @cache.include?(path) and not @cache[path].disposed?
      @cache[path].dispose
    end
  end
  
  def self.first_load(path)
    return unless path
    @cache = {} if @cache == nil
    @cache[path] = Bitmap.new(path)
  end
end
