def duplicates(arr1, arr2)
    new_arr1 =  *arr1
    new_arr2 = *arr2
  
    new_arr1.each do |i|
      if new_arr2.include?(i)
        new_arr2.delete_at(new_arr2.find_index(i))
      end
    end
    new_arr2.sort!
  end
  
  p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
  # => [204, 205, 206]
  