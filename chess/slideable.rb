module Slideable
    $horizontal_dirs = []
    $diagonal_dirs = []

    def horizontal_dirs
        #getter 
        $horizontal_dirs = []
        row_start = self.pos[0]
        col_start = self.pos[1]

        # hey! uncomment this when we figure out whether diagnonal_dirs works, thanks.

        # (row_start + 1...board.length).each { |i| possible_moves(i, col_start, $horizontal_dirs) }
        # (1..row_start).each { |i| possible_moves(row_start - i, col_start, $horizontal_dirs) }
        # (col_start + 1...board.length).each { |i| possible_moves(row_start, i, $horizontal_dirs) }
        # (1..col_start).each { |i| possible_moves(row_start, col_start - i, $horizontal_dirs) }
        $horizontal_dirs
    end

    def diagonal_dirs
        # getter
        $diagonal_dirs = []
        row_start = self.pos[0]
        col_start = self.pos[1]
        
        up = board.length - col_start
        down = col_start
        right = board.length - row_start
        left = row_start

        up < right ? up_right = up : up_right = right
        down < left ? down_left = down : down_left = left
        up < left ? up_left = up : up_left = left
        down < right ? down_right = down : down_right = right

        (1..up_right).each { |i| possible_move?(row_start + i, col_start + i, $diagonal_dirs) ? next : break }
        (1..down_left).each { |i| possible_move?(row_start - i, col_start - i, $diagonal_dirs) ? next : break }
        (1..up_left).each { |i| possible_move?(row_start - i, col_start + i, $diagonal_dirs) ? next : break }
        (1..down_right).each { |i| possible_move?(row_start + i, col_start - i, $diagonal_dirs) ? next : break }
        $diagonal_dirs
    end

    # should return an array or places a Piece can move to
    def moves
        # create an array to collect moves
        # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass #move_dir mtehod to get this info
        # for each direction, collect all the possible moves in that direction
        # and add them to your moves array
        # (use the grow_unblokcked_moves_in-dir helper method)
        # return the final array of moves (containing all possible moves in all directions)
        
        if is_a?(Rook)
            horizontal_dirs
        elsif is_a?(Bishop)
            diagonal_dirs
        elsif is_a?(Queen)
            diagonal_dirs + horizontal_dirs
        end
    end

    # private

    def move_dir
        # subclass implements this
        raise NotImplementedError # this only executes if we have
        # forgotten to implement it in our SubClass
    end

    # this herper method is only responsible for collecting all moves in a given direction
    # the given direction is represented by two args. the combination of a dx and dy
    def possible_move?(row, col, arr)
        # create an array to collect moves

        # get the piece's current row and current column
        # in a loop:
            # continually increment the piece's current row and current column to generate the next position
            # stop looping if the next position is invalid ( not on the board) ; the piece can't move in this direction
            # if the next position is empty, the piece can mmove here, so add the next position to pur moves array
            # if the next position is occupied with a piece of the opposite color, piece can move here
            # so we still add the next position to the moves array
            # but the piece cannot continue to move past this piece, stop looping
            # if the next position is occupied with a piece of the came color, stop looping

            #return the final moves array

        # change to check breaks
        pos = [row, col]
        if self.board[row, col].is_a?(nullPiece)
            arr << pos
            true
        elsif self.color == self.board[row, col].color
            false
        elsif self.color != self.board[row, col].color
            arr << pos
            false
        end
    end

end