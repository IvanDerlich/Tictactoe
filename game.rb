class Game
    def initialize
        @board = Board.new()
        @player1 = Player.new("x")
        @player2 = Player.new("o")
        @moves = 0
    end

    def play  
        move("x")
        move("o")
        move("x")
        move("o") 
        move("x")
        move("o") 
        move("x")  
        puts "\nIt's a stalemate" 
        restart
    end    

    private   

    def move(symbol)

        validMoveFlag = false

        while(validMoveFlag == false)

            @board.show

            puts "#{symbol}'s turn: select the position"            

            position = gets.chomp.to_i

            result = @board.tic(position,symbol) 
            
            
            puts "Result: #{result}"
            # puts validMoveFlag

            if(result == 7)    
                puts "The same player keeps playing"
            else
                validMoveFlag = true
            end

            if(result == -1)    
                puts "Invalid symbol, program exits"
                exit          
            end            

            if result == 1
                puts "\n----Player 1 wins----" 
                @board.show
                restart
            end

            if result == 2   
                puts "\n---Player 2 wins---" 
                @board.show
                restart
            end             
            
            
        end
    end

    private

    def restart        
        puts "\n... Restarting game"
        @board = Board.new()        
        @moves = 0
    end
end