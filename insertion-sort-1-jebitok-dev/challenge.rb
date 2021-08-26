def insertion_sort(array)
    index = array.length-1
    num = array[index]
  
    while index > 0
      if num > array[index-1]
        array[index] = num
        puts array.join(' ')
        break
      elsif num < array[index-1]
        array[index] = array[index-1]
        puts array.join(' ')
      end
      index -= 1
    end
  
    if index == 0
      array[0] = num
      puts array.join(' ')
    end
  end
  
  
  insertion_sort([1, 3, 2])
  # => 1 3 3
  #    1 2 3
  
  puts '-' * 20
  
  insertion_sort([1, 4, 6, 9, 3])
  # => 1 4 6 9 9
  #    1 4 6 6 9
  #    1 4 4 6 9
  #    1 3 4 6 9
  