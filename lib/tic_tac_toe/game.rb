module TicTacToe
  # La classe Game initialise le jeu avec 2 joueurs dont l'ordre est tiré au sort
  class Game

    attr_reader :players, :board, :current_player, :other_player
    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = players.shuffle
    end
    # On change l'ordre des joueurs à chaque tour
    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end
    # On indique  quel joueur joue et ce qu'il doit faire
    def solicit_move
      "
      Merci à #{current_player.name} de choisir une position (de 1 à 9)
      "
    end
    # On intercepte la saisie du joueur
    def get_move(human_move = gets.chomp)
      human_move_to_coordinate(human_move)
    end
    # On prévient en cas de fin de partie
    def game_over_message
      return "
      !!!!!!!!!!!!!!!!!!!!!!!
      #{current_player.name} a gagné!
      !!!!!!!!!!!!!!!!!!!!!!!" if board.game_over == :winner
      return "
      !!!!!!!!!!!!!!!!!!!!!!!
      Personne n'est infecté par les morpions, fin de partie!
      !!!!!!!!!!!!!!!!!!!!!!!" if board.game_over == :draw
    end
    # On indique qui commence à jouer
    def play
      puts "
      TROP DE CHANCE #{current_player.name}!! Tu commences la partie
      "
      sleep(1)
      # On lance la grille vide et l'invitation au jeu, ou le message de fin de partie, ou en change le joueur en cours
      while true
        board.formatted_grid
        puts ""
        puts solicit_move
        x, y = get_move
        board.set_cell(x, y, current_player.color)
        if board.game_over
          puts game_over_message
          board.formatted_grid
          return
        else
          switch_players
        end
      end
    end

    private
    # On traduit les coordonnées en nombre
    def human_move_to_coordinate(human_move)
      mapping = {
        "1" => [0, 0],
        "2" => [1, 0],
        "3" => [2, 0],
        "4" => [0, 1],
        "5" => [1, 1],
        "6" => [2, 1],
        "7" => [0, 2],
        "8" => [1, 2],
        "9" => [2, 2]
      }
      mapping[human_move]
    end

  end
end
