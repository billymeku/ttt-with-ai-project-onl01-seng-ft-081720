require 'pry'

class Board
  
  attr_accessor :cells
  
  @@all = []

  def cells=(cells)
    @cells = cells
    @@all << self 
  end 
  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end 
  
  def initialize
    reset!
  end 
  
  def display
      puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
      puts "-----------"
      puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
      puts "-----------"
      puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end
    
  def position
     puts ""
    
  end 
  
  def full?
      @cells.all? {|i| (i == "X" || i == "O")}
  end 
  
  def turn_count
      @cells.count{|token| token == "X" || token == "O"}
  end 

    def taken?(index)
     
     if !(@board[index] == nil || @board[index] == " ")
       false 
     else  @board[index] == "X" || @board[index] == "O"
       true 
     end 
   end

    def valid_move?(index)
      !(taken?(index) || index < 0 || index > 9)
    end
  
  
  def update
  end 
  
end 