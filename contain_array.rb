array_one = [1, 2, 3]
array_two = [2, 3]
array_three = [3, 4]



def one_array_in_another(array_to_check, array)
  x = 0
  while x < array.size
    if array_to_check.include?(array[x]) == false
      puts "Nope, this array is NOT included"
      break
    elsif
      x == array.size - 1
      puts "Yup, this array IS included"
      break
    else
      x += 1
    end
  end
end

one_array_in_another(array_one, array_two)
one_array_in_another(array_one, array_three)

