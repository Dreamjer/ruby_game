module RubyGame
  class StaticObject
    def initialize(window,line,col,img)
      @line = line
      @col = col
      @image_name = img
    end

    def draw
      @image.draw(@line,@col,1)
    end

    def init_image(window)
      @image = Gosu::Image.new(window,File.join(IMAGES_PATH,@image_name),true)
    end
  end
end
