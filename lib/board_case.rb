class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :value, :id 
 
 

  def initialize
  	@value = ["X","O",nil]
  	
  	A1 = BoardCase.new 
  	A2 = BoardCase.new
  	A3 = BoardCase.new 
  	B1 = BoardCase.new 
  	B2 = BoardCase.new 
  	B3 = BoardCase.new
  	C1 = BoardCase.new 
  	C2 = BoardCase.new
  	C3 =BoardCase.new 

    #TO DO : doit régler sa valeur, ainsi que son numéro de case
  end
  
end 