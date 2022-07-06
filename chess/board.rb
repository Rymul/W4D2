require_relative "pieces/bishop.rb"
require_relative "pieces/king.rb"
require_relative "pieces/knight.rb"
require_relative "pieces/null_piece.rb"
require_relative "pieces/pawn.rb"
require_relative "pieces/queen.rb"
require_relative "pieces/rook.rb"

class Board

    attr_reader :board
    def initialize
        @board = Array.new(8) {Array.new(8, NullPiece.instance)}
        self.populate
    end

    def populate
        self[[7,4]] = King.new("White", self,[7, 4]) # white king
        self[[0, 4]] = King.new("Black", self,  [0, 4]) # black king

        self[[7, 3]] = Queen.new("White", self, [7, 3]) # white queen
        self[[0, 3]] = Queen.new("Black", self, [0, 3]) # black queen

        self[[7, 2]] = Bishop.new("White", self,[7, 2]) # white bishop L
        self[[7, 5]] = Bishop.new("White", self,[7, 5]) # white bishop R
        self[[0, 2]] = Bishop.new("Black", self,[0, 2]) # black bishop L
        self[[0, 5]] = Bishop.new("Black", self,[0, 5]) # black bishop R

        self[[7, 1]] = Knight.new("White", self,[7, 1]) # white knight L
        self[[7, 6]] = Knight.new("White", self,[7, 6]) # white knight R
        self[[0, 1]] = Knight.new("Black", self,[0, 1]) # black knight L
        self[[0, 6]] = Knight.new("Black", self,[0, 6]) # black knight R

        self[[7, 0]] = Rook.new("White", self,  [7, 0]) # white rook L
        self[[7, 7]] = Rook.new("White", self,  [7, 7]) # white rook R
        self[[0, 0]] = Rook.new("Black", self,  [0, 0]) # black rook L
        self[[0, 7]] = Rook.new("Black", self,  [0, 7]) # black rook R

        8.times do |i|
            self[[1, i]] = Pawn.new("White", self,  [1, i]) # white pawn
            self[[6, i]] = Pawn.new("Black", self,  [6, i]) # black pawn
        end
    end

    
        
    def valid_pos?(pos)
        # to check if you have moved into check
        true
       
    end

    def [](pos)
        row, col = pos
        self.board[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].empty?
            raise "Ther is no piece at this position."
        end
        # self[start_pos].pos = end_pos
        self[end_pos], self[start_pos] = self[start_pos], self[end_pos]
        self[end_pos].pos = end_pos
        
    end

    def render
        

    end



end