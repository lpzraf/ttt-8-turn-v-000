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

# move method 
def move(board, index, current_player = "X")
  board[index] = current_player
end

# turn method
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
end

# valid_move? method
def valid_move?(board, index)
  if index < 0  || index > 8
    return false
  elsif board[index] == "X" || board[index] == "O"
    return false
  else
    true
  end
end


