

class Board

    # def self.new_board(board)
    #    board = 
    #    [
    #     Piece.new("White", board, [0,0]), 
    #     Piece.new("White", board, [0,1]), 
    #     Piece.new("White", board, [0,2]),
    #     Piece.new("White", board, [0,3]),
    #     Piece.new("White", board, [0,4]),
    #     Piece.new("White", board, [0,5]),
    #     Piece.new("White", board, [0,6]),
    #     Piece.new("White", board, [0,7])
    #    ] +
    #    temp = []
    #     8.times do |i|
    #         temp << Piece.new("White", board, [1,i]) 
    #     end
    #     4.times do 
    #         8.times do |i|
    #              << NullPiece.new("White", board, [1,i])
            
    #     end

    #     2.times do
    #    sub[0].push()
    #    8.times do
    #    sub[1] << Pawn.new
    #    sub

    attr_reader :board
    def initialize(board, cursor)
        @board = Array.new(8) {Array.new(8, NullPiece.intance)}
        @cursor = cursor
    end

    def populate
        self.add_piece(King.new("White", self.board, nil), [7, 4]) # white king
        self.add_piece(King.new("Black", self.board, nil), [0, 4]) # black king

        self.add_piece(Queen.new("White", self.board, nil), [7, 3]) # white queen
        self.add_piece(Queen.new("Black", self.board, nil), [0, 3]) # black queen

        self.add_piece(Bishop.new("White", self.board, nil), [7, 2]) # white bishop L
        self.add_piece(Bishop.new("White", self.board, nil), [7, 5]) # white bishop R
        self.add_piece(Bishop.new("Black", self.board, nil), [0, 2]) # black bishop L
        self.add_piece(Bishop.new("Black", self.board, nil), [0, 5]) # black bishop R

        self.add_piece(Knight.new("White", self.board, nil), [7, 1]) # white knight L
        self.add_piece(Knight.new("White", self.board, nil), [7, 6]) # white knight R
        self.add_piece(Knight.new("Black", self.board, nil), [0, 1]) # black knight L
        self.add_piece(Knight.new("Black", self.board, nil), [0, 6]) # black knight R

        self.add_piece(Rook.new("White", self.board, nil), [7, 0]) # white rook L
        self.add_piece(Rook.new("White", self.board, nil), [7, 7]) # white rook R
        self.add_piece(Rook.new("Black", self.board, nil), [0, 0]) # black rook L
        self.add_piece(Rook.new("Black", self.board, nil), [0, 7]) # black rook R

        8.times do |i|
            self.add_piece(Pawn.new("White", self.board, nil), [1, i]) # white pawn
            self.add_piece(Pawn.new("Black", self.board, nil), [6, i]) # black pawn
        end
    end

    def add_piece(piece, pos)
        piece.pos = pos
    end
        
    def valid_pos?(pos)
        # self[pos] 
        true
        # valid board bounds
        # row, col = pos
        # row >= 0 && row <= 7 && col >= 0 && col <= 7

        # empty?
    end

    def [](pos)
        row, col = pos
        self.board[row][col]
    end

    def []=(pos, val)
        row, col = pos
        self.board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].empty?
            raise "Ther is no piece at this position."
        end
        if valid_pos?(end_pos)
            self[start_pos].pos = end_pos
        end
    end

    def render

    end



end