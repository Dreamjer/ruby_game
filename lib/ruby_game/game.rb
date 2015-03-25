module RubyGame
	class Game < Gosu::Window
		def initialize(player,diamant)
			super(640,480,false) # appelle initialize du pere (ici gosu::window)
			@background_image = Gosu::Image.new(self, File.join(IMAGES_PATH,'background.png'),true)
			diamant.init_image(self)
			player.init_image(self)
			@diamant = diamant
			@player = player
		end

		def update
			@player.move_left  if button_down?(Gosu::Button::KbLeft)
			@player.move_right if button_down?(Gosu::Button::KbRight)
			@player.move_up    if button_down?(Gosu::Button::KbUp)
			@player.move_down  if button_down?(Gosu::Button::KbDown)
		end

		def draw 																		# methode draw surchargée de gosu::Window
			@background_image.draw(0,0,0) 						# methode draw de Gosu::Image
			[@player,@diamant].each { |obj| obj.draw} # methode draw du staticobject
		end

		def start!
			self.show # execute 2 treads en parallele : draw et update
		end
	end
end
