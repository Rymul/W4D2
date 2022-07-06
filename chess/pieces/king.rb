require_relative "../piece.rb"
require_relative "stepable_module.rb"
class King < Piece
    
    include Stepable

    def symbol
        if color == "Black"
            :♚
        else
            :♔
        end
    end


    def moves_diffs
        [ [1, 1], [-1, -1], [-1, 1], [1, -1], [0, 1], [0, -1], [1, 0], [-1, 0] ]
    end

end