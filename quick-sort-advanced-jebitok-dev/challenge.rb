def partition(array, start_i, end_i)
    pivot = array[end_i]
    j = start_i
  
    (start_i...end_i).each do |i|
      if array[i] < pivot
        array[i], array[j] = array[j], array[i]
        j += 1
      end
    end
    array[end_i], array[j] = array[j], array[end_i]
    j
  end
  
  def advanced_quicksort(array, start_i = 0, end_i = array.length - 1)
    if start_i < end_i
      pivot = partition(array, start_i, end_i)
      puts array.to_s
      advanced_quicksort(array, start_i, pivot - 1)
      advanced_quicksort(array, pivot + 1, end_i)
    end
  end
  advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
  # => 1 3 2 5 9 7 8
  #    1 2 3 5 9 7 8
  #    1 2 3 5 7 8 9
  
  