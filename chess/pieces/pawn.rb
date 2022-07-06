require_relative "../piece.rb"

class Pawn < Piece

    def symbol
        if color == "Black"
            :♟
        else
            :♙
        end
    end

    def moves
        moves = []
    end

    private

    def at_start_row?
        if self.pos 
        end

    end

    def forward_direction

    end

    def forward_steps

    end

    def side_attack

    end

end