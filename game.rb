class Game
    def initialize
        @board = Board.new()
        @player1 = Player.new("X")
        @player2 = Player.new("o")
    end
    def play
        @board.show
        @board.tic(2,"x")
        @board.show
        # @board.tic(3,"o")
        # @board.tic(0,"o")
        # board.tic(10,"o")
        # board.show_board
    end
end