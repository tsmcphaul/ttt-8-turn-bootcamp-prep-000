def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)

def between?(index)
  if index.between?(0,8) ==true
    return true
  else
    return false
end
end
def position_taken?(board, index)
  if board[index] =="" || board[index] ==" " || board[index] == nil
    return false
  else 
    return true
end
end
if position_taken?(board, index) == false && between?(index) == true
  return true
else
  return false || nil
end
end
def input_to_index(user_input)
  user_input = user_input.to_i 
  user_input - 1
end
def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
end
end