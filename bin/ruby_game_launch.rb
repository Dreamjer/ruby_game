#!/usr/bin/env ruby

require_relative '../lib/ruby_game'

# main

#@diamant = RubyGame::Diamant.new(rand(50..600),rand(50..400))
#@player  = RubyGame::Player.new(rand(50..600),rand(50..400))

jeu = RubyGame::Game.new
jeu.start! do |j|
  j.diamant(rand(50..600),rand(50..400),"ruby.png")
  j.player(rand(50..600),rand(50..400),"player.png")
  j.monsters(5)
end
