require_relative "../piece.rb"
require_relative "slideable_module.rb"

class Bishop < Piece

include Slideable
    def symbol
        if color == "Black"
            :♝
        else
            :♗
        end
        
    end

    def move_dirs 
        diaginal_move_dirs
    end

end