# display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# input_to_index 
def input_to_index(input)
   input.to_i - 1
end

# move 
def move(board, index, current_player = "X")
  board[index] = current_player
end

# turn 
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  #using the if statement to check valid_move? 
  if valid_move?(board,index)
  #if the move is valid -move the player and display board
  move(board, index)
  display_board(board)
  else 
    turn(board)  
  end
end

# valid_move? 
def valid_move?(board, index)
  if index < 0  || index > 8
    return false
  elsif board[index] == "X" || board[index] == "O"
    return false
  else
    true
  end
end


