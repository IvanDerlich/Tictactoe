class Board
    def initialize
        @current_state = ["", 1, 2, 3, 4, 5, 6, 7, 8, 9]
        @moves = 0
    end
    def show
        puts ""
        puts " #{@current_state[1]} | #{@current_state[2]} | #{@current_state[3]} "
        puts "---|---|---"
        puts " #{@current_state[4]} | #{@current_state[5]} | #{@current_state[6]} "
        puts "---|---|---"
        puts " #{@current_state[7]} | #{@current_state[8]} | #{@current_state[9]} "
    end

    def tic(position,symbol)

        unless( 
            validatePosition(position) ||
            validateSymbol(symbol)
            )        
            puts "Invalid input"
            return false
        end
       
        @current_state[position.to_i] = symbol
    end

    private

    def validatePosition(position)
        unless position.is_a? Integer
            puts "Position is not an inger"
            return false
        end
        if position > 9
            puts "Position is greater than 9"
            return false
        end
        if position < 1
            puts "Position is lower than 1"
            return false
        end
        true        
    end
    def validateSymbol(symbol)
        unless symbol != "x" || symbol != "o"
            puts "Symbol is not 'x' nor 'o'"
            return false
        end
        true
    end
    
end