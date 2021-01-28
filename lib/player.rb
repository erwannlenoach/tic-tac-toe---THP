class Players
  attr_reader :player1, :player2
  
  def initialize
    puts "Player 1, entre ton nom"
    @player1 = gets.chomp
    puts "#{@player1} tu as le symbole X"
    puts "Player 2, entre ton nom"
    @player2 = gets.chomp
    puts "#{@player2} tu as le symbole O"
  end

end 


