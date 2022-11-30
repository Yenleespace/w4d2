class Piece
    def initialize(color, board, pos=[])
        @color = color
        @board = board
        @pos = pos
    end

    #come back later ...
    def to_s
        # self.symbol.to_s 
    end

    def empty?
        @pos.length == 0
    end

    def valid_moves
    end

    def pos=(val)
        @pos = val
    end

    def color
        @color
    end

    def move_into_check?(end_pos)
    end


    
end