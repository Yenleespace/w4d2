require_relative 'piece.rb'
require_relative 'slideable.rb'
class Queen < Piece
  include Slideable
  
  def initialize(color, board, pos = [])
    super(color, board, pos)
    @symbol = :👑
  end
  
  def symbol
    @symbol
  end

  def moves


  private
  def move_dirs

  end
end