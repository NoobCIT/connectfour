require 'spec_helper'

module Connectfour
  describe Player do

    context "initialize" do
      it "initializes an instance variable 'name' " do
        player1 = Player.new("Jerry", "White")
        expect(player1.name).to eql("Jerry")
      end

      it "initializes an instance variable 'marker' " do
        player1 = Player.new("Jerry", "White")
        expect(player1.marker).to eql("White")
      end
    end
  end
end
