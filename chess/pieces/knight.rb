require_relative "../piece.rb"
require_relative "stepable_module.rb"

class Knight < Piece
        
    include Stepable

    def symbol
        if color == "Black"
            :♞
        else
            :♘
        end
        
    end

    def moves_diffs
        [ [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2] ]
    end

end