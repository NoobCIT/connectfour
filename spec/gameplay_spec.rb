require 'spec_helper'

module Connectfour
  describe Gameplay do

    context "#initialize" do
      it "randomly selects a current_player" do
        players = ["Jerry", "Sarah"]
        players.stub(:shuffle) { ["Sarah", "Jerry"] }
        game = Gameplay.new(players)
        expect(game.current_player).to eql("Sarah")
      end

      it "randomly selects other_player" do
        players = ["Jerry", "Sarah"]
        players.stub(:shuffle) { ["Sarah", "Jerry"] }
        game = Gameplay.new(players)
        expect(game.other_player).to eql("Jerry")
      end
    end

    context "#solicit_move" do
      it "asks the player for a move from 0 - 6" do
        game = Gameplay.new(["Jerry", "Sarah"])
        game.stub(:current_player) { "Jerry" }
        expected = "Jerry, please enter a number from  0 - 6"
        expect(game.solicit_move).to eql(expected)
      end
    end

    context "#switch_players" do
      it "switches for current player" do
        game = Gameplay.new(["Jerry", "Sarah"])
        current_player = game.current_player
        game.switch_players
        expect(current_player).to eql(game.other_player)
      end

      it "switches the for other player" do
        game = Gameplay.new(["Jerry", "Sarah"])
        other_player = game.other_player
        game.switch_players
        expect(other_player).to eql(game.current_player)
      end
    end

    context "#valid_move?" do
      it "returns true if move is between 0 - 6" do
        game = Gameplay.new(["Jerry", "Sarah"])
        game.stub(:gets) {"0"}
        expect(game.valid_move?).to eql(true)
      end

      it "returns false if move is not between 0 - 6" do
        game = Gameplay.new(["Jerry", "Sarah"])
        game.stub(:gets) {"-1"}
        expect(game.valid_move?).to eql(false)
      end

      it "returns false if it's not a number" do
        game = Gameplay.new(["Jerry", "Sarah"])
        game.stub(:gets) {"Word"}
        expect(game.valid_move?).to eql(false)
      end
    end
  end
end
