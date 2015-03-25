#!/usr/bin/env ruby

require_relative '../lib/ruby_game'

# main

@diamant = RubyGame::Diamant.new(rand(50..600),rand(50..400))
@player  = RubyGame::Player.new(rand(50..600),rand(50..400))

jeu = RubyGame::Game.new(@player,@diamant)
jeu.start!
