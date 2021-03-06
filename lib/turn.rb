# arbitrary arrangement of board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# changes players input 1-9 to index 0-8
def input_to_index(input)
   input.to_i - 1
end

# makes the move
def move(board, index, character = "X")
  board[index] = character
end

# decides if move is a valid move or not
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  end
end

# decides if position is available
def position_taken?(board, index)
  if board[index] == " " ||   board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" ||  board[index] == "O"
      true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
 if valid_move?(board, index) == true
   move(board, index)
   display_board(board)
 else
   turn(board)
 end
end
