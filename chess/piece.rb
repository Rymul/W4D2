

class Piece

    attr_reader :color
    attr_writer :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        " #{symbol} "
    end

    def empty?
        false
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