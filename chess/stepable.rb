moudle Stepable
  def moves
    # creat an array to collect moves

    # iterate through each of the piece's possible move_diffs
      # for each move_diff, increment the piece's position to generate a new pos
      # add the new position to hte moves array if:
        # on the board and empty
        # or on the board and contains a piece of the opposite color

    # return the final array of moves
  end

  private
  def move_diffs
    # this only executes if we have forgotten to implement it in our subclass
    raise notImplementedError
  end

end