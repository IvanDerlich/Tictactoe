class Game
    def initialize
        @board = Board.new()
        @player1 = Player.new("x")
        @player2 = Player.new("o")
        @moves = 0
    end

    def play  

        puts "<Test>"
        puts "Test1"
        move(1,"x")
        move(5,"x")
        move(9,"x")
        puts "Expected behaviour: Should return 'Player 1 wins' and restart"
        puts "</Test>" 

        puts "<Test>"
        puts "Test2"
        move(1,"o")
        move(5,"o")
        move(9,"o")
        puts "Expected behaviour: Should return 'Player 2 wins' and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test3"
        move(7,"x")
        move(5,"x")
        move(3,"x")
        puts "Expected behaviour: Should return 'Player 1 wins and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test4"
        move(7,"o")
        move(5,"o")
        move(3,"o")
        puts "Expected behaviour: Should return 'Player 2 wins' and restart"
        puts "</Test>"
        
        puts "<Test>"
        puts "Test5"
        move(7,"x")
        move(8,"x")
        move(9,"x")
        puts "Expected behaviour: Should return 'Player 1 wins and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test6"
        move(7,"o")
        move(8,"o")
        move(9,"o")
        puts "Expected behaviour: Should return 'Player 2 wins' and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test7"
        move(4,"x")
        move(5,"x")
        move(6,"x")
        puts "Expected behaviour: Should return 'Player 1 wins and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test8"
        move(4,"o")
        move(5,"o")
        move(6,"o")
        puts "Expected behaviour: Should return 'Player 2 wins' and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test9"
        move(1,"x")
        move(2,"x")
        move(3,"x")
        puts "Expected behaviour: Should return 'Player 1 wins and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test10"
        move(1,"o")
        move(2,"o")
        move(3,"o")
        puts "Expected behaviour: Should return 'Player 2 wins' and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test11"
        move(7,"x")
        move(4,"x")
        move(1,"x")
        puts "Expected behaviour: Should return 'Player 1 wins and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test12"
        move(7,"o")
        move(4,"o")
        move(1,"o")
        puts "Expected behaviour: Should return 'Player 2 wins' and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test13"
        move(8,"x")
        move(5,"x")
        move(2,"x")
        puts "Expected behaviour: Should return 'Player 1 wins and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test14"
        move(8,"o")
        move(5,"o")
        move(2,"o")
        puts "Expected behaviour: Should return 'Player 2 wins' and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test15"
        move(9,"x")
        move(6,"x")
        move(3,"x")
        puts "Expected behaviour: Should return 'Player 1 wins and restart"
        puts "</Test>"

        puts "<Test>"
        puts "Test16"
        move(9,"o")
        move(6,"o")
        move(3,"o")
        puts "Expected behaviour: Should return 'Player 2 wins' and restart"
        puts "</Test>" 

        puts "<Test17>"
        puts "Expected behaviour: Should say 'position already taken'" 
        puts "And return the control to the other player"
        move(1,"x")
        move(1,"x")        
        puts "</Test>"

        
        puts "<Test18>"
        puts "Expected behaviour: Should say 'position lower than one'" 
        puts "And return the control to the other player"
        move(0,"x")                 
        puts "</Test>"

        puts "<Test19>"
        puts "Expected behaviour:"
        puts "Expected behaviour: Should say 'position lower than one'" 
        puts "And return the control to the other player"
        move(-1,"x") 
        
        puts "</Test>"
        
        puts "<Test20>"
        puts "Expected behaviour: Should say 'position greater than 9'"
        puts "And return the control to the other player"
        move(10,"x")         
        puts "</Test>"

        puts "<Test21>"
        puts "Expected behaviour: Should say: 'Invalid symbol, program should exit'"
        puts "And exit the program, DOES NOT RETURNS CONTROL TO THE OTHER PLAYER"
        move(6,"u")         
        puts "</Test>"
         
    end

    private   

    def move(position,symbol)
        result = @board.tic(position,symbol)        
        # puts "#{position}: #{symbol}"

        if(result == 7)    
            puts "The same player keeps playing"
            return -1            
        end

        if(result == -1)    
            puts "Invalid symbol, program exits"
            exit          
        end

        #@board.show

        if result == 1
            puts "\nPlayer 1 wins" 
            @board.show
            restart
        end

        if result == 2   
            puts "\nPlayer 2 wins" 
            @board.show
            restart
        end                      
        
        if(result == 0)
            @moves += 1
            if @moves == 9
                puts "\nIt's a stalemate" 
                restart
            end
        end
        
        0 #zero means that the move was wel performed and the other player can move
    end

    private

    def restart        
        puts "\n... Restarting game"
        @board = Board.new()        
        @moves = 0
    end
end