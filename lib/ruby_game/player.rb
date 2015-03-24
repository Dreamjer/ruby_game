module RubyGame
	class Player
    def initialize(window,line,col)
      @line = line
      @col = col
      @image_name = "player.png"

      @image = Gosu::Image.new(window,File.join(IMAGES_PATH,@image_name),true)
    end

    def draw
      @image.draw(@line,@col,1)
    end
  end
end
