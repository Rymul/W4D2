

class Piece

    attr_writer :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s

    end

    def empty?

    end

    def valid_moves

    end

    def symbol
        #error handling for each piece if no symbol given
    end

    private
    def move_in_to_check?(end_pos)

    end

end