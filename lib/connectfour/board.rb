module Connectfour

  class Board

    attr_accessor :grid, :row, :col
    #attr_reader :row, :col

    def initialize
      @row = 7
      @col = 7
      @grid = default_grid
    end

    def default_grid
      Array.new(row) { Array.new(col) {Cell.new} }
    end

    def format_grid
      grid[row - 1][0].value = " 0"
      grid[row - 1][1].value = "1"
      grid[row - 1][2].value = "2"
      grid[row - 1][3].value = "3"
      grid[row - 1][4].value = "4"
      grid[row - 1][5].value = "5"
      grid[row - 1][6].value = "6"
      grid.each do |rows|
        puts rows.map { |cell| cell.value.empty? ? cell.value = "-" : cell.value }.join(" ")
      end
    end

  end

end
