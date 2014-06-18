board_one = [['X', 'X', 'X'],['X', 'X', 'O'], ['O', 'X', 'X']]
board_two = [['X', 'O', 'O'],['X', 'X', 'X'], ['X', 'X', 'O']]
board_three = [['O', 'X', 'O'],['X', 'X', 'O'], ['X', 'O', 'X']]

def winner(board)
  if check_rows(board)
    puts "WINNER!!"
  elsif check_columns(board)
    puts "WINNER!!"
  elsif check_diagonal(board)
    puts "WINNER!!"
  else
    puts "UGHH... Cats game. This is why Tic-Tac-Toe sucks..."
  end
end

def check_rows(board)
  x = 0
  y = 0
  status = false

  while x < 3
    if board[x][y] == board[x][y+1] && board[x][y+1] == board[x][y+2]
      status = true
      break
    elsif x == 2
      status = false
      break
    else
      x += 1
    end
  end
  status
end

def check_columns(board)
  x = 0
  y = 0
  status = false

  while y < 3
    if board[x][y] == board[x+1][y] && board[x+1][y] == board[x+2][y]
      status = true
      break
    elsif y == 2
      status = false
      break
    else
      y += 1
    end
  end
  status
end

def check_diagonal(board)
  y = 0
  x = 0

  if board[x][y] == board[x+1][y+1] && board[x+1][y+1] == board[x+2][y+2]
    status = true
  elsif board[x][y+2] == board[x+1][y+1] && board[x+1][y+1] == board[x+2][y]
    status = true
  else
    status = false
  end
  status
end

winner(board_one)
winner(board_two)
winner(board_three)

# these can be used to get a better picture what is happening when something is broken

=begin
puts '*'*80
puts "Board ONE"
winner(board_one)
check_rows(board_one)
check_columns(board_one)
check_diagonal(board_one)
puts "Board TWO"
winner(board_two)
check_rows(board_two)
check_columns(board_two)
check_diagonal(board_two)
puts "Board THREE"
winner(board_three)
check_rows(board_three)
check_columns(board_three)
check_diagonal(board_three)
=end
