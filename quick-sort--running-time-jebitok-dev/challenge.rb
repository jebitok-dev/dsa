def insertion_sort(array)
    for i in 1...(array.length)
      current = array[i]
      j = i - 1
      while j >= 0 && current < array[j]
        array[j + 1] = array[j]
        $insertion_sort_count += 1
        j -= 1
      end
      array[j + 1] = current
    end
  end
  
  def partition(array, start_i, end_i)
    pivot = array[end_i]
    j = start_i
    (start_i...end_i).each do |i|
      if array[i] < pivot
        array[i], array[j] = array[j], array[i]
        $quick_sort_count += 1
        j += 1
      end
    end
    array[end_i], array[j] = array[j], array[end_i]
    $quick_sort_count += 1
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
  
  def quicksort_running_time(array)
    $quick_sort_count = 0
    $insertion_sort_count = 0
    insertion_sort(array.clone)
    advanced_quicksort(array.clone)
  
    $insertion_sort_count - $quick_sort_count
  end
  
  puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
  # => 1
  
  