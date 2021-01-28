require 'pry'
class Game
attr_accessor :players, :player_array, :game_board



  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  
  def initialize 

    @players = Players.new

    @player_array = []

    @player_array << @players

    @game_board = Board.new

  end

  def turn
    @end = false
    @turn = 1

    while @turn<10 
      if @turn.odd?
          turn_sequence(@players.player1, "X")
      elsif @turn.even?
          turn_sequence(@players.player2, "O")
      end

    end

  end

  def turn_sequence (player, symbol)
    puts "#{player}(#{symbol}) choisis une case"
    @player_move = gets.chomp.to_i-1
      if (0..8).include?(@player_move) && @game_board.board[@player_move] == " " && @end == false
        @turn += 1
        @game_board.board_update(@player_move, symbol)
        win_check
        draw_check
      else
    puts "Choisis un nombre entre 0 et 8 dans une position libre\n"
    end
end 
   def win_check

win_check = [ 
[0,1,2], # top_row 
[3,4,5], # middle_row 
[6,7,8], # bottom_row 
[0,3,6], # left_column 
[1,4,7], # center_column 
[2,5,8], # right_column 
[0,4,8], # left_diagonal 
[6,4,2] # right_diagonal 
  ]

   win_check.each do |win_check|
      if (@game_board.board[win_check[0]] == @game_board.board[win_check[1]] && 
        @game_board.board[win_check[1]] == @game_board.board[win_check[2]]) &&
        @game_board.board[win_check[0]] != " "
          if @game_board.board[win_check[0]] == "X"
            puts "#{@players.player1} WINS"
            @turn = 10
            @end = true
          elsif @game_board.board[win_check[0]] == "O"
            puts "#{@players.player2} WINS"
            @turn = 10
            @end = true
        end
      end
    end
  end

 def draw_check
    if @turn == 10 && @end == false
      puts "It's a draw"
      play_again?
    end
  end
  
end 