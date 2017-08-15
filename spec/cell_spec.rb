require 'spec_helper'

module Connectfour
  describe Cell do

    context "initialize" do
      it "is initialized with a value of ''" do
        cell = Cell.new
        expect(cell.value).to eql('')
      end
    end
  end
end
