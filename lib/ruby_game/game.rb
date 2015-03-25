module RubyGame
	class Game < Gosu::Window
		def initialize
			super(640,480,false) # appelle initialize du pere (ici gosu::window)
			@background_image = Gosu::Image.new(self, File.join(IMAGES_PATH,'background.png'),true)
			@font = Gosu::Font.new(self,Gosu::default_font_name,50)
		end

		def diamant(line,col,img)
			@diamant=Diamant.new(line,col,img)
			@diamant.init_image(self)
		end

		def player(line,col,img)
			@player=Player.new(line,col,img)
			@player.init_image(self)
		end

		def monster(line,col,img)
			@monster=Monster.new(line,col,img)
			@monster.init_image(self)
		end

		def monsters(nombre)
			@monsters = []
			nombre.times {
				monster = Monster.new(rand(50..600),rand(50..400),"ghost1.png")
				monster.init_image(self)
				@monsters << monster
			}
		end

		def update
			if @status == :run
				@player.move_left  if button_down?(Gosu::Button::KbLeft)
				@player.move_right if button_down?(Gosu::Button::KbRight)
				@player.move_up    if button_down?(Gosu::Button::KbUp)
				@player.move_down  if button_down?(Gosu::Button::KbDown)
				@status=:win if @player.touch?(@diamant)
				@monsters.each do |monstroplante|
					monstroplante.follow(@player)
					@status=:gameover if monstroplante.touch?(@player)
				end
			end
		end

		def button_down(id)
			self.restart! if id == Gosu::Button::KbR
			self.close if (id == Gosu::Button::KbEscape || id == Gosu::Button::KbA)
		end

		def draw 																		# methode draw surchargée de gosu::Window
			@background_image.draw(0,0,0) 						# methode draw de Gosu::Image
			@font.draw("YOU WIN !",200,240,2,1.0,1.0,0xffffff00,) if @status == :win
			@font.draw("GAME OVER !",200,240,2,1.0,1.0,0xffffff00,) if @status == :gameover
			([@player,@diamant]+@monsters).each { |obj| obj.draw} # methode draw du staticobject
		end

		def start!(&blkjeu)
			@savblk=blkjeu if block_given?
			@status=:run
			@savblk.call(self)
			self.show if block_given? # execute 2 treads en parallele : draw et update
		end

		def restart!
			start!
		end
	end
end
