require "spec_helper"
 
module TicTacToe
  describe Board do 
    context "#initialize" do
      # On regarde que ne génère pas d'erreur quand le hash à une clé :grid
      it "initializes the board with a grid" do
        expect { Board.new(grid: "grid") }.to_not raise_error
      end
    end
 
  end
end
