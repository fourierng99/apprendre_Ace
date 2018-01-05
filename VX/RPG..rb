module RPG
  class TilesetVX
    attr_accessor :name
    attr_accessor :bitmapNames
    attr_accessor :passages
    attr_accessor :terrainTags
    def initialize(name,bitmapNames,passages)
      @name=name
      @bitmapNames=bitmapNames
      @passages=passages
      @terrainTags=Table.new(0x2000)
    end
  end
end