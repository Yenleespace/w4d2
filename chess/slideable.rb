module Slideable
    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def horizontal_dirs
        row_start = self.pos[0]
        col_start = self.pos[1]

        (row_start + 1...board.length).each { |i|  moves(i, col_start, HORIZONTAL_DIRS) }
        (1..row_start).each { |i| moves(row_start - i, col_start, HORIZONTAL_DIRS) }
        (col_start + 1...board.length).each { |i| moves(row_start, i, HORIZONTAL_DIRS) }
        (1..col_start).each { |i| moves(row_start, col_start - i, HORIZONTAL_DIRS) }
    end

    def diagonal_dirs
        row_start = self.pos[0]
        col_start = self.pos[1]
        
        up = board.length - col_start
        down = col_start
        right = board.length - row_start
        left = row_start

        up < right ? up_right = up : up_right = right

        (1..up_right).each { |i| moves(row_start + i, col_start + i, DIAGONAL_DIRS) }
        (1..down_left).each { |i| moves(row_start - i, col_start - i, DIAGONAL_DIRS) }


        3 = board.length - highest_val
        2 = lowest_val
    end

    def moves(row, col, arr)
        pos = [row, col]
        if self.board[row, col].is_a?(nullPiece)
            arr << pos
        elsif self.color == self.board[row, col].color
            break 
        elsif self.color != self.board[row, col].color
            arr << pos
            break
        end
    end
end