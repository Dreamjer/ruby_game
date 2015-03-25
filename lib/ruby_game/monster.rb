module RubyGame
	class Monster < StaticObject
    def initialize(line,col, img = 'dark_knight.png')
      super
      @velocite=2
    end

    def follow(cible)
      self.col += @velocite  if cible.col - self.col > 0
      self.col -= @velocite  if cible.col - self.col < 0
      self.line += @velocite if cible.line - self.line > 0
      self.line -= @velocite if cible.line - self.line < 0
    end
  end
end
