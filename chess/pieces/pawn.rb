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
        all_diffs = forward_steps + side_attack
        all_diffs.each { |dif| [self.pos[0] + dif[0], self.pos[1] + dif[1]] }
    end

    private

    def at_start_row?
        row, col = self.pos
        if self.color == "Black"
            row == 1
        else
            row == 6
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
        new_moves = []
        single_step = [1 * forward_direction,  0]
        double_step = [2 * forward_direction, 0]
        new_moves << double_step if self.at_start_row? && self.check_move_in_dir(double_step) 
        new_moves << single_step if self.check_move_in_dir(single_step)
        new_moves
    end

    def side_attack
        new_moves = []
        side_diffs = [[1 * forward_direction, 1 * forward_direction], [1 * forward_direction, -1 * forward_direction]]
        side_diffs.each do |dif| 
            if check_move_in_dir(dif)
                new_moves << dif
            end
        end
        new_moves
    end

    private
    def in_board?(pos)
        row, col = pos
        row >= 0 && row <= 7 && col >= 0 && col <= 7
    end

    def check_move_in_dir(pos)
        if self.in_board?(pos)
            piece_at_pos = self.board[pos] 
        else
            return false
        end
        if piece_at_pos.empty?
            return true
        elsif piece_at_pos.color == self.color
            return false
        else 
            return true
        end
    end




end