module RubyGame
	class Monster < StaticObject
    include Movable
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

    def follow
      self.col  += (cible.col  <=> self.col  ) * @velocite # L'opérateur '<=>' rend 1 si le 1er est plus grand, -1 si plus petit, 0 si egal
      self.line += (cible.line <=> self.line ) * @velocite
    end
  end
end
