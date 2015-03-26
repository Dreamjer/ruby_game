module RubyGame
	class Monster < StaticObject

    def comport
      @comport
    end

    # setter comport=
    def comport=(new_comport)
      @comport = new_comport
    end


    def initialize(line,col, img = 'dark_knight.png')
      super
      @velocite=1 # 1 pour un sens -1 pour l'autre
    end

    def follow(cible)
      self.col  += (cible.col  <=> self.col  ) * @velocite # L'opérateur '<=>' rend 1 si le 1er est plus grand, -1 si plus petit, 0 si egal
      self.line += (cible.line <=> self.line ) * @velocite
    end

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
  end
end
