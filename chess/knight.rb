require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable

  

  protected
  def move_diffs
    move(move_diff_arr)
  end
end