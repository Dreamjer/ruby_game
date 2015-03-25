module RubyGame
	class Player < StaticObject
    def initialize(line,col, img = 'player.png')
      super
      @velocite=3
    end
    @@bord_right=600
    @@bord_bas=420

    def move_left
      @line-=@velocite if @line >= 10
    end
    def move_right
      @line+=@velocite if @line <= @@bord_right
    end
    def move_up
      @col-=@velocite if @col >= 10
    end
    def move_down
      @col+=@velocite if @col <= @@bord_bas
    end
  end
end
