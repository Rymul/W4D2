module Stepable


    def move_diffs 
        [ [1, -2], [2, -1], [2, 1], [1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2] ]
    end

    def moves
        row, col = self.pos 
        moves = []

        move_diffs.each do |change|
            new_pos = [row + change[0], col + change[1]]
            moves << new_pos if self.check_move_in_dir(new_pos)
        end
        moves
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