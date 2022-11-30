module Slideable
    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def horizontal_dirs
        start_pos = self.pos
        row_start = self.pos[0]
        col_start = self.pos[1]

        (row_start + 1...board.length).each { |i|  moves(i, col_start, HORIZONTAL_DIRS) }
        (0...row_start).each { |i| moves(row_start - 1 - i, col_start, HORIZONTAL_DIRS) }
        (col_start + 1...board.length).each { |i| moves(row_start, i, col_start) }
        (0...col_start).each { |i| moves(row_start, col, HORIZONTAL_DIRS) }
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