class Knight
    attr_accessor :location, :moves, :children

    def initialize(location)
        @location = location
        @moves = possible_moves(location)
        @children = [];

    end

    def possible_moves(location, result = []) #second parameter allows this to be passed down resursively
        moves = [
            [-1,-2], [1,2], [-1,2], [1,-2], [-2,-1], [2,1], [-2,1], [2,1]
        ]
        moves.each do |move|
            x = location[0] + move[0]
            y = location[1] + move[1]
            result << [x,y] if x.between?(0,7) && y.between?(0,7) #makes sure we are on the chess board
        end
        result
    end

end