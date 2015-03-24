module RubyGame
	class Game < Gosu::Window
		def initialize
			super(640,480,false)
			@background_image = Gosu::Image.new(self, File.join(IMAGES_PATH,'background.png'),true)
			@player = Player.new(self,350,280)
			#@player_image = Gosu::Image.new(self,File.join(IMAGES_PATH,'player.png'),true)
			#@mario_image = Gosu::Image.new(self,File.join(IMAGES_PATH,'mario.png'),true)
		end

		def draw
			@background_image.draw(0,0,0)
			@player.draw
			#@mario_image.draw(45,45,0)
		end

		def start!
			self.show
		end
	end
end
