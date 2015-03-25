module RubyGame
	class Monster < StaticObject
    def initialize(line,col, img = 'dark_knight.png')
      super
      @velocite=2
    end

    def follow(cible)
      self.col  += (cible.col  <=> self.col  ) * @velocite 
      self.line += (cible.line <=> self.line ) * @velocite
    end
  end
end
