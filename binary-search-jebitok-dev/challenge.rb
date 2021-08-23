def sqrt(number)
    sqrt_recursive(number, 0, number)
  end
  
  def sqrt_recursive(number, min_interval, max_interval)
    arr = Array(min_interval+1..max_interval)
  
    mid_el = arr[arr.length/2]
    mid_el_index = arr.find_index(mid_el)
  
    if(mid_el * mid_el) > number
      arr = arr.slice!(0, mid_el_index)
    end
  
    if(mid_el * mid_el) < number
      arr = arr.slice!(mid_el_index, arr.length-1)
    end
  
    if (mid_el * mid_el) == number
      return mid_el
    end
  
    if arr.nil?
      return
    end
    sqrt_recursive(number, arr[0]-1, arr[-1])
  end
  
  puts sqrt(25)
  puts sqrt(7056)
  