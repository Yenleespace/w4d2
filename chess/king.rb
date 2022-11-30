require_relative 'piece.rb'
require_relative 'stepable.rb'

class King < Piece
  include Stepable




  def move_diff
    king_move = [[1, 0, -1], [1, 0, -1]]

    # not sure how not to get [0, 0] and want to hard code it out of
    # possible movements -- this is the only place it should possibly
    # be checked.
    self.moves(king_move).reject! { |move_pos| move_pos == [0,0] }
  end


end 