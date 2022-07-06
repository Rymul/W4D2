# require_relative "piece.rb"
# require "singleton"

# class NullPiece < Piece
# include Singleton
#     def initialize
#         @color = nil
#         @board = nil 
#         @pos = nil 
#     end

#     def moves
#         nil
#     end

#     def empty?
#         true
#     end

#     def symbol
#         "☐"
#     end
# end


# class Pawn < Piece

#     def symbol
#         if color == black
#             :♟
#         else
#             :♙
#         end
#     end

#     def moves
#         moves = []
#     end

#     private

#     def at_start_row?
#         if self.pos 
#         end

#     end

#     def forward_direction

#     end

#     def forward_steps

#     end

#     def side_attack

#     end

# end

# require_relative "piece.rb"
# class King < Piece


#     def symbol
#         if color == black
#             :♚
#         else
#             :♔
#         end
        
#     end

#     def moves_diff
#         moves = []
#     end

# end

# require_relative "piece.rb"
# class Knight < Piece


#     def symbol
#         if color == black
#             :♞
#         else
#             :♘
#         end
        
#     end

#     def moves_diff
#         moves = []
#     end

# end


# require_relative "piece.rb"
# class Queen < Piece

#     def symbol
#         if color == black
#             :♛
#         else
#             :♕
#         end
        
#     end

#     def moves_diff
#         moves = []
#     end

# end


# require_relative "piece.rb"
# class Bishop < Piece


#     def symbol
#         if color == black
#             :♝
#         else
#             :♗
#         end
        
#     end

#     def moves_diff
#         moves = []
#     end

# end


# require_relative "piece.rb"
# class Rook < Piece

#     def symbol
#         if color == black
#             :♜
#         else
#             :♖
#         end
        
#     end

#     def moves_diff
#         moves = []
#     end

# end