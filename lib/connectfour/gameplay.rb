module Connectfour
  class Gameplay

    attr_accessor :current_player, :other_player, :board

    def initialize(players, board = Board.new)
      @current_player, @other_player = players.shuffle
      @board = board
    end

    def solicit_move
      "#{current_player.name}, please enter a number from  0 - 6"
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def valid_move(move = gets.chomp)
      if move.to_i.to_s == move
        move.to_i.between?(0, 6) ? set_move(move.to_i) : false
      else
        false
      end
    end

    def set_move(move)
      space = false
      i = 1
      until space == true || i > board.row
        if board.grid[board.row-i][move].value == '-'
          board.grid[board.row-i][move].value = current_player.marker
          space = true
        else
          i += 1
        end
      end
    end

    def win?
      return true if win_row? || win_col? || win_diagonal?
    end

    def win_row?
      for x in (0..board.row-1) do
        count = 0
        for y in (0..board.col-1) do
          board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
          return true if count >= 4
        end
      end
      false
    end

    def win_col?
      for y in (0..board.row-1) do
        count = 0
        for x in (0..board.col-1) do
          board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
          return true if count >= 4
        end
      end
      false
    end

    def win_diagonal?
      [win_d1?, win_d2?, win_d3?, win_d4?, win_d5?, win_d6?, win_d7?, win_d8?, win_d9?, win_d10?, win_d11?, win_d12?, win_d13?, win_d14?].any? { |n| n == true }
    end

    def win_d1?
      x = 0
      y = 3
      count = 0
      until y < 0
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y -= 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d2?
      x = 0
      y = 4
      count = 0
      until y < 0
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y -= 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d3?
      x = 0
      y = 5
      count = 0
      until y < 0
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y -= 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d4?
      x = 0
      y = 6
      count = 0
      until y < 0
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y -= 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d5?
      x = 1
      y = 6
      count = 0
      until y < 1
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y -= 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d6?
      x = 2
      y = 6
      count = 0
      until y < 2
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y -= 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d7?
      x = 3
      y = 6
      count = 0
      until y < 3
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y -= 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d8?
      x = 3
      y = 0
      count = 0
      until y > 3
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y += 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d9?
      x = 2
      y = 0
      count = 0
      until y > 4
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y += 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d10?
      x = 1
      y = 0
      count = 0
      until y > 5
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y += 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d11?
      x = 0
      y = 0
      count = 0
      until y > 6
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y += 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d12?
      x = 0
      y = 1
      count = 0
      until y > 6
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y += 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d13?
      x = 0
      y = 2
      count = 0
      until y > 6
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y += 1
        x += 1
      end
      return true if count >= 4
      false
    end

    def win_d14?
      x = 0
      y = 3
      count = 0
      until y > 6
        board.grid[x][y].value == current_player.marker ? count +=1 : count = 0
        y += 1
        x += 1
      end
      return true if count >= 4
      false
    end


  end
end
