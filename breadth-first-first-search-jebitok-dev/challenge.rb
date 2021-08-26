def bfs(graph)
    result = [0]
    q = [0]
    while !q.empty?
      key = q.shift
      graph[key].each do |i|
        unless result.include?(i)
          result.push(i)
          q.push(i)
        end
      end
    end
    result
  end
  
  p bfs({
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  })
  # => [0, 2, 5, 3, 4, 1]
  