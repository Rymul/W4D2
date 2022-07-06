require_relative "../piece.rb"
require_relative "slideable_module.rb"

class Rook < Piece
    include Slideable
    def symbol
        if color == "Black"
            :♜
        else
            :♖
        end
        
    end

    def move_dirs 
        horizontal_move_dirs
    end

end