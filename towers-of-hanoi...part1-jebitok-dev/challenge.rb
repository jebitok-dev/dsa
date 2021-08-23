def move(starting, goal)
    intermediate = [1, 2, 3].delete_if {|x| x == starting || x == goal }[0]
    return "#{starting}->#{intermediate} #{starting}->#{goal} #{intermediate}->#{goal}"
  end
  
  puts move(1, 3)
  # => 1->2 1->3 2->3
  
  puts move(2, 3)
  # => 2->1 2->3 1->3
  