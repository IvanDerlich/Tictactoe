
class Board

    def show
        puts ""
        puts " #{@state[7]} | #{@state[8]} | #{@state[9]} "
        puts "---|---|---"
        puts " #{@state[4]} | #{@state[5]} | #{@state[6]} "
        puts "---|---|---"      
        puts " #{@state[1]} | #{@state[2]} | #{@state[3]} "
    end
    
    def validatePosition(position)
        #7: non stopping error
        #0: everything OK
        unless position.is_a? Integer
            puts "Position is not an integer"
            return 7
        end
        if position > 9
            puts "Position is greater than 9"
            return 7
        end
        if position < 1
            puts "Position is lower than 1"
            return 7
        end
        if @state[position]== 'x' || @state[position]== 'o'
            puts "Position already taken"
            return 7
        end
        if position.nil?
            puts "Can't enter null position"
            return 7
        end
        0   
    end

    def validateSymbol(symbol)
        if symbol != "x" && symbol != "o"
            puts "Symbol is not 'x' nor 'o'"
            return -1
        end
        0
    end
end