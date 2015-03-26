require "gosu"
require "awesome_print"
require_relative "ruby_game/static_object"
require_relative "ruby_game/movable"
require_relative "ruby_game/player"
require_relative "ruby_game/diamant"
require_relative "ruby_game/monster"
require_relative "ruby_game/game"

module RubyGame
#  puts __FILE__
#  puts File.dirname(__FILE__)
#  puts File.expand_path('../',File.dirname(__FILE__))

  ROOT_PATH=File.expand_path('../',File.dirname(__FILE__))
  IMAGES_PATH=File.join(ROOT_PATH,'/app/assets/images')

#  puts IMAGES_PATH
end
