def depth_first_search(graph)
    visited = [0]
    stack = [0]
    res = []
    while !stack.empty?
      key = stack.pop
      res.push(key)
      graph[key].reverse.each do |i|
        unless visited.include?(i)
          visited.push(i)
          stack.push(i)
        end
      end
    end
    res
  end
  
  p depth_first_search({
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  })
  # => [0, 2, 5, 4, 1, 3]
  