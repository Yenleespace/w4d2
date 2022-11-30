module Slideable
    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def horizontal_dirs
        start_pos = self.pos
        row_start = self.pos[0]
        col_start = self.pos[1]

        (row_start + 1...board.length).each do |i|
            pos = [i, col_start]
            if self.board[i, col_start].is_a?(nullPiece)
                HORIZONTAL_DIRS << pos
            elsif self.color == self.board[i, col_start].color
                break 
            elsif self.color != self.board[i, col_start].color
                HORIZONTAL_DIRS << pos
                break
            end
        end

        (0...row_start).each do |i|
            pos = [row_start - 1 - i, col_start]
            if self.board[row_start - i - 1, col_start].is_a?(nullPiece)
                HORIZONTAL_DIRS << pos
            elsif self.color == self.board[row_start - i - 1, col_start].color
                break 
            elsif self.color != self.board[row_start - i - 1, col_start].color
                HORIZONTAL_DIRS << pos
                break
            end
        end

        (col_start + 1...board.length).each do |i|
            pos = [row_start, i]
            if self.board[row_start, i].is_a?(nullPiece)
                HORIZONTAL_DIRS << pos
            elsif self.color == self.board[row_start, i].color
                break 
            elsif self.color != self.board[row_start, i].color
                HORIZONTAL_DIRS << pos
                break
            end
        end

        (0...col_start).each do |i|
            col = [col_start - 1 - i]
            pos = [row_start, col]
            if self.board[row_start, col].is_a?(nullPiece)
                HORIZONTAL_DIRS << pos
            elsif self.color == self.board[row_start, col].color
                break 
            elsif self.color != self.board[row_start, col].color
                HORIZONTAL_DIRS << pos
                break
            end
        end

    end

    def valid

    def moves 
        HORIZONTAL_DIR + DIAGONAL_DIRS
    end
end