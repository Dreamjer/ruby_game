module RubyGame
	class Player < StaticObject
    def initialize(window,line,col, img = 'player.png')
      super
    end
    @@bord_right=600
    @@bord_bas=420

    def move_left
      @line-=3 if @line >= 10
    end
    def move_right
      @line+=3 if @line <= @@bord_right
    end
    def move_up
      @col-=3 if @col >= 10
    end
    def move_down
      @col+=3 if @col <= @@bord_bas
    end
  end
end
