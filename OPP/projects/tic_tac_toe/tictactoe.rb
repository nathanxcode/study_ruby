class Game

    public
    def init #main function for tic tac toe game
        board = [['_','_','_'],['_','_','_'],['_','_','_']]
        loop do
            puts " "
            show(board)
            puts " "
    
            #player x
            puts "Player X: Choose a row:"
            puts "(ROW = 0,1,2)"
            r = gets.chomp.to_i
            puts "Player X: Choose a column:"
            puts "(COLUMN = 0,1,2)"
            c = gets.chomp.to_i
            if board[r][c] == 'X' || board[r][c] == 'O'
                p "invalid position: alredy taken"
            else
                board[r][c] = 'X'
            end
    
            win?(board) == 'X' ? break : ''
    
            puts "p #{board[r]}"
            show(board)
            puts " "
    
            #player o
            puts "Player O: Choose a row:"
            puts "(ROW = 0,1,2)"
            r = gets.chomp.to_i
            puts "Player O: Choose a column:"
            puts "(COLUMN = 0,1,2)"
            c = gets.chomp.to_i
            if board[r][c] == 'X' || board[r][c] == 'O'
                p "invalid position: alredy taken"
            else
                board[r][c] = 'O'
            end
    
            win?(board) == 'O' ? break : ''
    
            puts " "
            show(board)
            puts " "
        end
    end

    private
    def win?(board)
        winner = ' '
        #player x win conditions
        if ((board[0][0] == 'X' and board[1][0] == 'X' and board[2][0] == 'X')|| 
            (board[0][1] == 'X' and board[1][1] == 'X' and board[2][1] == 'X')|| 
            (board[0][2] == 'X' and board[1][2] == 'X' and board[2][2] == 'X') ) # horizontal win
            puts "player X wins!!"
            winner = 'X'
            return winner
        elsif (board[0][0] == 'X' and board[0][1] == 'X' and board[0][2] == 'X')||
            (board[1][0] == 'X' and board[1][1] == 'X' and board[1][2] == 'X')|| 
            (board[2][0] == 'X' and board[2][1] == 'X' and board[2][2] == 'X')
            puts "player X wins!!"
            winner = 'X'
            return winner
        elsif (board[0][0] == 'X' and board[1][1] == 'X' and board[2][2] == 'X')||
            (board[0][2] == 'X' and board[1][1] == 'X' and board[2][0] == 'X')
            puts "player X wins!!"
            winner = 'X'
            return winner
        end
    
        if ((board[0][0] == 'O' and board[1][0] == 'O' and board[2][0] == 'O')||
            (board[0][1] == 'O' and board[1][1] == 'O' and board[2][1] == 'O')|| 
            (board[0][2] == 'O' and board[1][2] == 'O' and board[2][2] == 'O')) 
            puts "player O wins!!"
            winner = 'O'
            return winner
        elsif (board[0][0] == 'O' and board[0][1] == 'O' and board[0][2] == 'O')||
            (board[1][0] == 'O' and board[1][1] == 'O' and board[1][2] == 'O')|| 
            (board[2][0] == 'O' and board[2][1] == 'O' and board[2][2] == 'O')
            puts "player O wins!!"
            winner = 'O'
            return winner
        elsif (board[0][0] == 'O' and board[1][1] == 'O' and board[2][2] == 'O')||
            (board[0][2] == 'O' and board[1][1] == 'O' and board[2][0] == 'O')
            puts "player O wins!!"
            winner = 'O'
            return winner
        end
    end

    def show(board)
   
        board.each do |row|
    
            puts row.each { |col| col }.join(' ')
    
        end
    
    end


end


ticTacToe = Game.new()
ticTacToe.init
