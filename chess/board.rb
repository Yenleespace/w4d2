class Board
    def initialize
        @board = Array.new(8) {Array.new(8, piece)}
    end

    def [](pos)
        row, col = pos
        @board[row][col] 
    end

    def []=(pos, val)
        row, col = pos
        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        if self[start_pos].nil? 
            raise "no piece current position"
        elsif 
    end
end