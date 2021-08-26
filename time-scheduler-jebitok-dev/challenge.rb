def overlap?(e1, e2)
    e1[1] > e2[0]
  end
  
  def time_scheduler(array)
    e = (0...array.length).step(2).collect { |index| [array[index], array[index+1]] }
    e.sort_by! { |event| event[1] }
    res = [e[0]]
  
    (1...e.length).each do |i|
      res << e[i] unless overlap?(res[-1], e[i])
    end
    return res
  end
  
  p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
  # => [[1,3], [5,6], [7,9]]
  