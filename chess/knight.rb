require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable



  protected
  def move_diffs
    row_two_knight
    moves()
  end
end