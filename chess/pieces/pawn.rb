require_relative "../piece.rb"

class Pawn < Piece

    def symbol
        if self.color == "Black"
            :♟
        else
            :♙
        end
    end

    def moves
        moves = 
    end

    private

    def at_start_row?
        if self.pos 
        end

    end

    def forward_direction
        if self.color == "Black"
            1
        else
            -1
        end
    end

    def forward_steps
        if self.color == "Black"
            self.pos - 1
        else
            6 - self.pos 
        end
    end

    def side_attack
        side_diffs = [[1 * forward_direction, 1 * forward_direction], [1 * forward_direction, -1 * forward_direction]]
        side_diffs.each do |dif| 
            if 
            end
        end
    end



end