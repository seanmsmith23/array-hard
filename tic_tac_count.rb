board_one = [['X', 'O', 'O'],['X', 'X', 'O'], ['O', 'X', 'O']]
board_two = [['X', 'O', 'O'],['X', 'X', 'O'], ['X', 'X', 'X']]


def played_in_row(board)
  puts "Counting..."
  x = 0
  row = x + 1
  while x < 3
    played_x = board[x].count('X')
    played_o = board[x].count('O')
    puts "#{played_x} 'X' and #{played_o} 'O' in Row #{row}"
    x += 1
    row += 1
  end
end

played_in_row(board_one)
played_in_row(board_two)
