array_one = [1,2,3,4,5]
array_two = [10,5,3,18]

def sum_array(array)
  number = 0
  index = 0
  while index < array.size
      number += array[index]
    index += 1
  end
  p number
end

sum_array(array_one)
sum_array(array_two)