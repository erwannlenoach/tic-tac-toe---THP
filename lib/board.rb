# require 'pry'

class Board

  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
attr_reader :board

#TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)

  def initialize
    puts "On your turn enter one of the following numbers to place your piece in the corresponding location:"
    puts "1 | 2 | 3"
    puts "---------"
    puts "4 | 5 | 6"
    puts "---------"
    puts "7 | 8 | 9"
    @board = [" "," "," "," "," "," "," "," "," "]
  
  end

 def board_update(position, symbol)
    @board[position] = symbol
    game_board_display(@board)
  end

#method that displays the updated board after each turn    
  def game_board_display (board)
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "---------"
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "---------"
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end
  

  # def play_turn (user_input,symbol)

  #   puts "#{player}quelle case choisis-tu ?"
  #   @player_move = gets.chomp.to_i

  #   if (0..8) include?(@player_move) && @gameboard.board[@player_move] == " " && @end == false
  #     return true 

  #   if @board_cases.include? chosen_case 
  #     return true 
  #   end 
 


# #method to update the @board array with "X" or "O"  
#   def board_update(position, symbol)
#     @board[position] = symbol
#     game_board_display(@board)
#   end

# #method that displays the updated board after each turn    
#   def game_board_display (board)
#     puts "#{board[0]} | #{board[1]} | #{board[2]}"
#     puts "---------"
#     puts "#{board[3]} | #{board[4]} | #{board[5]}"
#     puts "---------"
#     puts "#{board[6]} | #{board[7]} | #{board[8]}"
#   end
  

#   end
# binding.pry


#   def victory?
#     #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
#   end


end 