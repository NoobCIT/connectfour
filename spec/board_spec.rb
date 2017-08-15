require 'spec_helper'

module Connectfour
  describe Board do

    context 'default_grid' do
      it "returns the row size (6) of a 6x7 grid" do
        board = Board.new
        expect(board.grid.length).to eql(6)
      end

      it "returns the column size (7) of a 6x7 grid" do
        board = Board.new
        expect(board.grid[0].length).to eql(7)
      end
    end

    context 'format_grid' do
      it "returns a grid filled with '-' if empty" do
        board = Board.new
        board.format_grid
        expect(board.grid[0][0].value).to eql('-')
      end

      it "updates the cell value" do
        board = Board.new
        board.format_grid
        expect(board.grid[0][0].value = 'X').to eql('X')
      end

      it 'make updates the cell only if empty' do
        board = Board.new
        board.format_grid
        board.grid[0][0].value = 'X'
        board.format_grid
        expect(board.grid[0][0].value).to eql('X')
      end
    end

  #  context '#set_move' do
  #    it "updates the board for player move" do
  #      board = Board.new
  #      board.format_grid
  #      grid[0][5].value = "X"
  #      expect(grid[0][5].value).to eql("X")
  #    end
  #  end
  end
end
