moudle Stepable
  def moves(*pos_change_arr)
    move_arr = []
    knight = [[[2,-2], [1,-1]] [[1, -1], [2, -2]]]
    king = [[1, 0, -1] [1, 0, -1]]

    pos_change_arr.each do |arr|
      arr[0].each do |i|
        arr[1].each do |j|
          move_arr << pos[i, j] if valid_move?
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