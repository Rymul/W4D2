require_relative "../piece.rb"
class King < Piece


    def symbol
        if color == black
            :♚
        else
            :♔
        end
        
    end

    def moves_diff
        moves = []
    end

end