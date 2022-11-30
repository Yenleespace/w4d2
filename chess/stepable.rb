moudle Stepable
  def moves(*pos_change_arr)
    move_arr = []

    # these will be used within the move_diff methods on both Knight and King.
    # knight[0][0] represents movement within a row, knight[0][1] represents
    # movement within a column. The pair arrays should be splatted into moves
    # and we iterate through each of the pairs and check if it is a possible
    # movement. 
    # knight = [[[2,-2], [1,-1]], [[1, -1], [2, -2]]]     
    # king = [[1, 0, -1] [1, 0, -1]]

    # this represents the iteration of these row/col pairs
    # arr[0] is row movement, arr[1] is column movement.
    pos_change_arr.each do |arr|
      arr[0].each do |i|
        row = self.pos[0] + i
        arr[1].each do |j|
          col = self.pos[1] + j
          move_arr << [row, col] if valid_move?
        end
      end
    end

    # create an array to collect moves


    # iterate through each of the piece's possible move_diffs
      # for each move_diff, increment the piece's position to generate a new pos
      # add the new position to the moves array if:
        # on the board and empty
        # or on the board and contains a piece of the opposite color

    # return the final array of moves
    move_arr
  end

  private
  def move_diffs
    # this only executes if we have forgotten to implement it in our subclass
    raise notImplementedError
  end

end