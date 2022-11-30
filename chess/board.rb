require_relative 'piece.rb'

class Board
    def initialize
        @board = Array.new(8) { Array.new(8) { nullPiece.instance } }


    end

    def populate_pieces(color)
        # look back at this once we've figured out piece implementation
        piece_arr = [Rook.new(color, self, pos), Bishop, Knight, Queen, King, Bishop, Knight]

        color == black ? row_arr = [0, 1] : row_arr = [7,6]
        row_arr.each do |idx|
            (0...@board.length).each do |jdx|
                pos = [i, j]            # we might need to initialize this earlier
                i == 7 || i == 0 ? add_piece(piece_arr[j], pos) : Pawn.new(color)
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