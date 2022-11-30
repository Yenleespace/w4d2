moudle Stepable
  def moves
    # create an array to collect moves

    # iterate through each of the piece's possible move_diffs
      # for each move_diff, increment the piece's position to generate a new pos
      # add the new position to the moves array if:
        # on the board and empty
        # or on the board and contains a piece of the opposite color

    # return the final array of moves
    two_move = [2, -2]
    one_move = [1, -1]

    king_move = [1, 0, -1], [1, 0, -1]


    two_move.each do |i|
      one_move.each do |j|
        pos[i, j]
      end
    end

    one_move.each do |i|
      two_move.each do |j|
        arr << pos[i, j] if valid_move?
      end
    end

    return arr 
  end

  private
  def move_diffs
    # this only executes if we have forgotten to implement it in our subclass
    raise notImplementedError
  end

end