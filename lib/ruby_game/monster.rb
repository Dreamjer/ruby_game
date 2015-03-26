module RubyGame
	class Monster < StaticObject
    def initialize(line,col, img = 'dark_knight.png')
      super
      @velocite=1
    end

    def follow(cible)
      self.col  += (cible.col  <=> self.col  ) * @velocite # L'opérateur '<=>' rend 1 si le 1er est plus grand, -1 si plus petit, 0 si egal
      self.line += (cible.line <=> self.line ) * @velocite
    end
  end
end
