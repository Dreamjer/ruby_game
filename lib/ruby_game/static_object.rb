module RubyGame
  class StaticObject
    def initialize(window,line,col,img)
      @line = line
      @col = col
      @image_name = img
      @image = Gosu::Image.new(window,File.join(IMAGES_PATH,img),true)
    end

    def draw
      @image.draw(@line,@col,1)
    end
  end
end
