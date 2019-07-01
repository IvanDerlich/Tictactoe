class Game
    def initialize
        @board = Board.new()        
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
end