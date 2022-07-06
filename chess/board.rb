

class Board

    def self.new_board(board)
       board = 
       [
        Piece.new("White", board, [0,0]), 
        Piece.new("White", board, [0,1]), 
        Piece.new("White", board, [0,2]),
        Piece.new("White", board, [0,3]),
        Piece.new("White", board, [0,4]),
        Piece.new("White", board, [0,5]),
        Piece.new("White", board, [0,6]),
        Piece.new("White", board, [0,7])
       ] +
       temp = []
        8.times do |i|
            temp << Piece.new("White", board, [1,i]) 
        end
        4.times do 
            8.times do |i|
                 << NullPiece.new("White", board, [1,i])
            
        end




        2.times do
       sub[0].push()
       8.times do
       sub[1] << Pawn.new
       sub


    def initialize(board, cursor)
        @board = 
        @cursor = cursor
    end

    def render

    end
    
    def move_piece(start_pos, end_pos)

        if start_pos

    end





end