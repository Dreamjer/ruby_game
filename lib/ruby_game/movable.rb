module RubyGame
  module Movable
    @@bord_right=600
    @@bord_bas=430

    def move_up_down
      self.col += @velocite
      @velocite=1  if self.col < 20
      @velocite=-1 if self.col > 460
    end
    def move_latteral
      self.line += @velocite
      @velocite=1  if self.line < 20
      @velocite=-1 if self.line > 600
    end
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
