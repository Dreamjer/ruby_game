module RubyGame
  class StaticObject
    def initialize(line,col,img)
      @line = line
      @col = col
      @image_name = img
      @velocite=1
    end

    def draw
      @image.draw(@line,@col,1)
    end

    def init_image(window)
      @image = Gosu::Image.new(window,File.join(IMAGES_PATH,@image_name),true)
    end
  end
end
