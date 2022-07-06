require_relative "../piece.rb"
class Queen < Piece

    def symbol
        if color == black
            :♛
        else
            :♕
        end
        
    end

    def moves_diff
        moves = []
    end

end