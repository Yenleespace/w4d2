module Slideable
    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def horizontal_dirs
        start_pos = self.pos
        row_start = self.pos[0]
        col_start = self.pos[1]

        (row_start...@board.length).each do |i|
            pos = [i, col_start]
            if self.board[i, col_start].is_a?(nullPiece)
                HORIZONTAL_DIRS << [i, col_start] 
            elsif self.color == self.board[i, col_start].color
                break 
            elsif self.color != self.board[i, col_start].color
                HORIZONTAL_DIRS << [i, col_start]
                break
            end
        end


    end

    def moves 
        HORIZONTAL_DIR + DIAGONAL_DIRS
    end
end