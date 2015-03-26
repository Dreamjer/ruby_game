#!/usr/bin/env ruby

require_relative '../lib/ruby_game'

# main

#@diamant = RubyGame::Diamant.new(rand(50..600),rand(50..400))
#@player  = RubyGame::Player.new(rand(50..600),rand(50..400))

jeu = RubyGame::Game.new
jeu.start! do |j|
  j.diamant(rand(50..600),rand(50..400),"ruby.png")
  j.player(rand(50..600),rand(50..400),"player.png")
  j.monsters(nombre: 5, action: :follow)
  j.monsters(nombre: 2, action: :move_up_down)
  j.monsters(nombre: 2, action: :move_latteral)
#  j.monsters(5, lambda {|m,p| m.follow(p)})
#  j.monsters(2, lambda {|m,p| m.move_up_down})
#  j.monsters(2, lambda {|m,p| m.move_latteral})
end
