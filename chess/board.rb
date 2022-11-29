require_relative 'piece.rb'

class Board
    def initialize
        @board = Array.new(8) { Array.new(8) }
        [Rook, Bishop, Knight, Queen, King, Bishop, Knight, ]

    end

    def populate_pieces(row_arr, col_arr, piece)
        row_arr.each do |i|
            col_arr.each do |j|
                i < 3 ? add_piece(piece, [i, j])
            end
        end
    end

    def add_piece(piece, pos)
        self[pos] = piece
    end

    def [](pos)
        row, col = pos
        @board[row][col] 
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)
        if self[start_pos].nil?                       #placeholder for nullPiece
            raise "no piece current position"
        elsif valid_pos?(start_pos) || valid_pos?(end_pos)
            raise "Invalid move for #{self[start_pos]}"
        end

        if self[end_pos].nil?                         #placeholder for nullPiece
            self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
        else
            self[end_pos] = self[start_pos]
            self[start_pos] = nil                     #placeholder for nullPiece
        end
    end
end