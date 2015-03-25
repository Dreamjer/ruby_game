module RubyGame
  class StaticObject
    attr_accessor :line, :col
    def initialize(line,col,img)
      @line = line
      @col = col
      @image_name = img
      @velocite=1
      @taille_cible=30
    end

    def draw
      @image.draw_rot(@line,@col,1,0)
    end

    def init_image(window)
      @image = Gosu::Image.new(window,File.join(IMAGES_PATH,@image_name),true)
    end

    def touch?(cible)
      (@line - cible.line).abs < @taille_cible && (@col - cible.col).abs < @taille_cible
    end
  end
end
