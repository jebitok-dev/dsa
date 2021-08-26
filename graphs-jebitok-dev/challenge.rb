def graph(hash_graph)
    arr = [0]
    i = hash_graph[0][0]
    while true do
      unless i == 4
        arr.push(i)
      else
        break
      end
      i = hash_graph[i][0]
    end
    arr.push(4)
  end
  
  hash = { 
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  }
  
  p graph(hash)
  # => [0, 2, 5, 4]
  