class Board
    def initialize
        @state = ["", 1, 2, 3, 4, 5, 6, 7, 8, 9]        
    end
    def show
        puts ""
        puts " #{@state[7]} | #{@state[8]} | #{@state[9]} "
        puts "---|---|---"
        puts " #{@state[4]} | #{@state[5]} | #{@state[6]} "
        puts "---|---|---"
        puts " #{@state[1]} | #{@state[2]} | #{@state[3]} "

    end

    def tic(position,symbol)
        return -1 if validateSymbol(symbol) == -1
        positionCode = validatePosition(position)
        return positionCode if positionCode != 0       
        @state[position.to_i] = symbol 
        return checkwin
    end

    private

    def checkwin   
        # returns
        # 0 -> no one has won yet
        # 1 -> player 1 wins
        # 2 -> player 2 wins

        #DIAGONALS
        
        #TL-BR
        if @state[1] ==  @state[5] && 
            @state[5] == @state[9] 
            return 1 if @state[5] == "x"
            return 2 if @state[5] == "o"
        end

        #BL-TR
        if @state[7] ==  @state[5] && 
            @state[5] == @state[3] 
            return 1 if @state[5] == "x"
            return 2 if @state[5] == "o"
        end

        # #HORIZONTALS

        #TL-TR
        if @state[7] ==  @state[8] && 
            @state[8] == @state[9] 
            return 1 if @state[8] == "x"
            return 2 if @state[8] == "o"
        end

        #CL-CR
        if @state[4] ==  @state[5] && 
            @state[5] == @state[6] 
            return 1 if @state[5] == "x"
            return 2 if @state[5] == "o"
        end

        #BL-BR
        if @state[1] ==  @state[2] && 
            @state[2] == @state[3] 
            return 1 if @state[2] == "x"
            return 2 if @state[2] == "o"
        end

        # #VERTICALS
        
        #TL-BL
        if @state[7] ==  @state[4] && 
            @state[4] == @state[1] 
            return 1 if @state[4] == "x"
            return 2 if @state[4] == "o"
        end

        #TC-BC
        if @state[8] ==  @state[5] && 
            @state[5] == @state[2] 
            return 1 if @state[5] == "x"
            return 2 if @state[5] == "o"
        end
        
        #TR-BR
        if @state[9] ==  @state[6] && 
            @state[6] == @state[3]  
            return 1 if @state[6] == "x"
            return 2 if @state[6] == "o"
        end   
        0
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