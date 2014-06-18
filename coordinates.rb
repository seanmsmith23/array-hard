board_one = [['X', 'O', 'O'],['X', 'X', 'O'], ['O', 'X', 'O']]
board_two = [['X', 'O', 'O'],['X', 'X', 'O'], ['X', 'X', 'X']]

def coordinates(board)
  x_coord = []
  y_coord = []

  x = 0
  y = 0

  puts "Getting the coordinates for this board..."

  until y == 3
    if board[x][y] == 'X'
      x_coord << [x,y]
    elsif board[x][y] == 'O'
      y_coord << [x,y]
    else puts "Error! This isn't an 'X' or an 'O'..."
    end
    x += 1
    if x == 3
      y += 1
      x = 0
    end
  end

  print "Here are the X's: #{x_coord}\n"
  print "Here are the O's: #{y_coord}\n"

end

coordinates(board_one)
coordinates(board_two)

#loop across row. create array with coordinates and position of move for x's
#increment y. repeat until x = 2