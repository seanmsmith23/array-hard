board_one = [['X', 'X', 'X'],['X', 'X', 'O'], ['O', 'X', 'X']]
board_two = [['O', 'O', 'X'],['O', 'X', 'O'], ['O', 'X', 'O']]
board_three = [['O', 'O', 'X'],['O', 'X', 'O'], ['X', 'O', 'O']]
board_four = [['O', 'X', 'O'],['X', 'X', 'O'], ['X', 'O', 'X']]

def winner(board)
  rows = check_rows(board)
  columns = check_columns(board)
  diagonals =  check_diagonal(board)

  if rows[0]
    puts "OHH!! #{rows[1]} wins!! The classic, but effective three across!!"
  elsif columns[0]
    puts "OHH!! #{columns[1]} wins!! Droppin' three straight down ON YOU FACE!!"
  elsif diagonals[0]
    puts "OHH!! #{diagonals[1]} wins!! The diagonal samurai slasher!! You ninja you..."
  else
    puts "LAAAME... TIE. This is why Tic-Tac-Toe sucks..."
  end
end

def check_rows(board)
  x = 0
  y = 0
  output = []

  while x < 3
    if board[x][y] == board[x][y+1] && board[x][y+1] == board[x][y+2]
      output << true
      output << board[x][y]
      break
    elsif x == 2
      output << false
      break
    else
      x += 1
    end
  end
  output
end

def check_columns(board)
  x = 0
  y = 0
  output = []

  while y < 3
    if board[x][y] == board[x+1][y] && board[x+1][y] == board[x+2][y]
      output << true
      output << board[x][y]
      break
    elsif y == 2
      output << false
      break
    else
      y += 1
    end
  end
  output
end

def check_diagonal(board)
  y = 0
  x = 0
  output = []

  if board[x][y] == board[x+1][y+1] && board[x+1][y+1] == board[x+2][y+2]
    output << true
    output << board[x][y]
  elsif board[x][y+2] == board[x+1][y+1] && board[x+1][y+1] == board[x+2][y]
    output << true
    output << board[x][y+2]
  else
    output << false
  end
  output
end

winner(board_one)
winner(board_two)
winner(board_three)
winner(board_four)

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
