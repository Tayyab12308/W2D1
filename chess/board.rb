require_relative "piece"
require 'byebug'
class Board
  attr_reader :board

  class NoPieceInPosition < StandardError
    def message
      "There is no piece in that position"
    end
  end 
  class PieceAlreadyInPosition < StandardError
    def message
      "There is already a piece in that position"
    end
  end 

  def self.populate_board
    board = Array.new(8) { Array.new(8, nil) }
    board.each_with_index { |row, i| row.each_index { |square| row[square] = Piece.new if i < 2 || i > 5 } } 
    board
  end

  def initialize(board = Board.populate_board)
    @board = board
  end

  def move_piece(start_pos, end_pos)
    start_row, start_col = start_pos
    end_row, end_col = end_pos
    begin
      if self.board[start_row][start_col] == nil
        raise NoPieceInPosition
      elsif self.board[end_row][end_col] != nil 
        raise PieceAlreadyInPosition
      end 
      self.board[start_row][start_col], self.board[end_row][end_col] = self.board[end_row][end_col], self.board[start_row][start_col]
    rescue NoPieceInPosition => e
      puts e.message
    rescue PieceAlreadyInPosition => e
      puts e.message
    end 

  end
    

end



# if __FILENAME__ == __PROGRAMNAME__ 
#    p board = Board.new
# p board.board

