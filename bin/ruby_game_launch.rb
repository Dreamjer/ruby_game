#!/usr/bin/env ruby

require_relative '../lib/ruby_game'

# main

#@diamant = RubyGame::Diamant.new(rand(50..600),rand(50..400))
#@player  = RubyGame::Player.new(rand(50..600),rand(50..400))

jeu = RubyGame::Game.new
jeu.start! do |j|
  diamant(rand(50..600),rand(50..400),"ruby.png")
  player(rand(50..600),rand(50..400),"player.png")
  monsters(nombre: 5, action: :follow)
  monsters(nombre: 2, action: :move_up_down)
  monsters(nombre: 2, action: :move_latteral)
end
