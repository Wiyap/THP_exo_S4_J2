require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'

require_relative 'lib/game.rb'
require_relative 'lib/player.rb'


player1 = Player.new("Josiane")
player2 = Player.new("José")

while player1.life_points > 0 && player2.life_points > 0
  player1.attacks(player2)
  if player2.life_points > 0 
    player2.attacks(player1)
  end
end

binding.pry

