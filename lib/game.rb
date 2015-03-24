require "gosu"

module RubyGame
	class Game < Gosu::Window
		def initialize
			super(640,480,false)
		end
		
		def start!
			self.show
		end
	end
end

# main 

run=RubyGame::Game.new
run.start!