require_relative "../lib/tic_tac_toe.rb"

puts "
      ::::::::::::::::::::
       Salut les Morpions
      ::::::::::::::::::::"

puts "
Nom du premier joueur:"
nom_1 = gets
joueur_1 = TicTacToe::Player.new({color: "X", name: nom_1.chomp})
puts "
Nom du second joueur:"
nom_2 = gets
joueur_2 = TicTacToe::Player.new({color: "O", name:nom_2.chomp})
players = [joueur_1, joueur_2]
TicTacToe::Game.new(players).play
