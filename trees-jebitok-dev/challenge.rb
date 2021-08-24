def leftmost_nodes_sum(array)
    top_index = 0
    tree_length = array.length - 1
    res = 0
    i = 1
    while tree_length >= top_index
      res += array[top_index]
      top_index = 2**i -1
      i += 1
    end
    return res
  end
  
  puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
  # => 11
  