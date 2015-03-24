module RubyGame
	class Game < Gosu::Window
		def initialize
			super(640,480,false)
			@background_image = Gosu::Image.new(self, File.join(IMAGES_PATH,'background.png'),true)
			#@diamant = Gosu::Image.new(self, File.join(IMAGES_PATH,'ruby.png'),true)
			@diamant = Diamant.new(self,rand(0..640),rand(0..480))
			@player = Player.new(self,350,280)

			#@player_image = Gosu::Image.new(self,File.join(IMAGES_PATH,'player.png'),true)
			#@mario_image = Gosu::Image.new(self,File.join(IMAGES_PATH,'mario.png'),true)
		end

		def draw
			@background_image.draw(0,0,0)
			@player.draw
			@diamant.draw
			#@mario_image.draw(45,45,0)
		end

		def start!
			self.show
		end
	end
end
