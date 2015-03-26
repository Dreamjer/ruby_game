module RubyGame
	class Player < StaticObject
    include Movable
    def initialize(line,col, img = 'player.png')
      super
      @velocite=3
    end
  end
end
