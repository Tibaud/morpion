require_relative "../lib/tic_tac_toe.rb"

puts "
      ::::::::::::::::::::
       Salut les Morpions
      ::::::::::::::::::::"
#sleep(1)
puts "
Nom du premier joueur:"
nom_1 = gets
joueur_1 = TicTacToe::Player.new({color: " ☺ ", name: nom_1.chomp})
#sleep(1)
puts "
Nom du second joueur:"
nom_2 = gets
joueur_2 = TicTacToe::Player.new({color: " ☻ ", name:nom_2.chomp})
#sleep(1)
puts "
#{nom_1.chomp} joue avec les ☺ #{nom_2.chomp} avec les ☻"
#sleep(1)
players = [joueur_1, joueur_2]
TicTacToe::Game.new(players).play
