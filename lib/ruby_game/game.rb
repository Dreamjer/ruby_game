module RubyGame
	class Game < Gosu::Window
		def initialize(player,diamant)
			super(640,480,false) # appelle initialize du pere (ici gosu::window)
			@background_image = Gosu::Image.new(self, File.join(IMAGES_PATH,'background.png'),true)
			@font = Gosu::Font.new(self,Gosu::default_font_name,60)
			diamant.init_image(self)
			player.init_image(self)
			@diamant = diamant
			@player = player
		end

		def update
			if @status == :run
				@player.move_left  if button_down?(Gosu::Button::KbLeft)
				@player.move_right if button_down?(Gosu::Button::KbRight)
				@player.move_up    if button_down?(Gosu::Button::KbUp)
				@player.move_down  if button_down?(Gosu::Button::KbDown)
				@status=:win if @player.touch?(@diamant)
			end
		end

		def draw 																		# methode draw surchargée de gosu::Window
			@background_image.draw(0,0,0) 						# methode draw de Gosu::Image
			@font.draw("BALEZE !",200,240,2,1.0,1.0,0xffffff00,) if @status == :win
			[@player,@diamant].each { |obj| obj.draw} # methode draw du staticobject
		end

		def start!
			@status=:run
			self.show # execute 2 treads en parallele : draw et update
		end
	end
end
