require_relative "piece.rb"
require "singleton"

class NullPiece < Piece
include Singleton
    def initialize
        @color = nil
        @board = nil 
        @pos = nil 
    end

    def moves
        nil
    end

    def symbol
        "☐"
    end
end


class Pawn < Piece

    def initialize(color, board, pos)
        super(color, board, pos)
    end


    def symbol
        :P
    end

    def moves
        moves = []
    end

    private

    def at_start_row?
        if self.pos 

    end

    def forward_direction

    end

    def forward_steps

    end

    def side_attack

    end

end