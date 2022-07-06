module Slideable




    
    def diaginal_move_dirs
        [[1, 1], [-1, 1], [1, -1], [-1, -1]]
    end

    def horizontal_move_dirs
        [[0, 1], [0,-1], [1, 0], [-1, 0]]
    end

    def move_dirs 
        diaginal_move_dirs + horizontal_move_dirs
    end

    def moves
        new_arr = []
        move_dirs.each { |dir| new_arr += sub_moves(dir[0], dir[1])}
        new_arr
        
    end

    def sub_moves(dx,dy)
        return [] if !grow_unblock_moves_in_dir([self.pos[0] + dx, self.pos[1] + dy])
        mover = self.dup
        mover.pos = [mover.pos[0] + dx, mover.pos[1] + dy]
        [[self.pos[0] + dx , self.pos[1] + dy]] + mover.sub_moves(dx,dy)
    end

    private
    def in_board?(pos)
        row, col = pos
        row >= 0 && row <= 7 && col >= 0 && col <= 7
    end

    def grow_unblock_moves_in_dir(pos)
        p pos
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

        # row, col = self.pos #starting pos
        # new_pos = [row + dx, col + dy]
        # if self.in_board?(new_pos)
        #     piece_at_pos = self.board[new_pos] 
        # else
        #     return false
        # end

        # if piece_at_pos.empty?
        #     return true
        # elsif piece_at_pos.color == self.color
        #     return false
        # else 
        #     return true
        # end
    end


end