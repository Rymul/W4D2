module Slideable




    private
    # def diaginal_move_dirs
    #     moves = [[1, 1], [-1, 1], [1, -1], [-1, -1]]
    # end

    # def horizontal_move_dirs
    #     moves = [[0, 1], [0. -1], [1, 0], [-1, 0]]
    # end

    def move_dirs 

    end

    def moves
        # interate through move dirs and check each iteration against grow
    end

    def in_board?(pos)
        row, col = pos
        row >= 0 && row <= 7 && col >= 0 && col <= 7
    end

    def grow_unblock_moves_in_dir(dx, dy)
        row, col = self.pos #starting pos
        new_pos = [row + dx, col + dy]
        if self.in_board?(new_pos)
            piece_at_pos = self.board[new_pos] 
        if 
                
        !piece_at_pos.is_a?(NullPiece)
        return false
    elsif 

    end


end