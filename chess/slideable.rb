module Slideable
    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def horizontal_dirs
        #getter 
        row_start = self.pos[0]
        col_start = self.pos[1]

        (row_start + 1...board.length).each { |i|  moves(i, col_start, HORIZONTAL_DIRS) }
        (1..row_start).each { |i| moves(row_start - i, col_start, HORIZONTAL_DIRS) }
        (col_start + 1...board.length).each { |i| moves(row_start, i, HORIZONTAL_DIRS) }
        (1..col_start).each { |i| moves(row_start, col_start - i, HORIZONTAL_DIRS) }
    end

    def diagonal_dirs
        # getter
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

    # should return an array or places a Piece can move to
    def moves(row, col, arr)
        # create an array to collect moves
        # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass #move_dir mtehod to get this info
        # for each direction, collect all the possible moves in that direction
        # and add them to your moves array
        # (use the grow_unblokcked_moves_in-dir helper method)
        # return the final array of moves (containing all possible moves in all directions)
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

    # private

    def move_dir
        # subclass implements this
        raise NotImplementedError # this only executes if we have
        # forgotten to implement it in our SubClass
    end

    # this herper method is only responsible for collecting all moves in a given direction
    # the given direction is represented by two args. the combination of a dx and dy
    def grow_unblokcked_moves_in(dx, dy)
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
    end

end