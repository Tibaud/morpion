require "spec_helper"
 
module TicTacToe
  describe Cell do
    context "#initialize" do
    # On teste que la valeur de la cellule par défaut est "" (vide)
      it "is initialized with a value of '' by default" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end
    # On teste que la valeur de la cellule peut être "X"
      it "can be initialized with a value of 'X'" do
	cell = Cell.new("X")
	expect(cell.value).to eq "X"
      end
    end
  end
end
