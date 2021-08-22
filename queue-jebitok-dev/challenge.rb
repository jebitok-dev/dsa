
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :length

  #setup head and tail
  def initialize
    @head = nil
    @length = 0
  end
  
  def add(number)
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
    elsif @head.next_node.nil?
      @head.next_node = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end   
    @length += 1
  end

  def get(index)
    node = @head
    current = node
    iter = 0
    while iter < index
      current = node.next_node
      node = current
      iter+=1
    end
    current.value
  end

  def add_at(index, number)
    new_node = Node.new(number)
    node = @head
    current = node
    iter = 0

    while iter < index
      previous = node
      current = node.next_node
      node = current
      iter+=1
    end

    if index == 0
      new_node.next_node = current
      @head = new_node
    else
      new_node.next_node = current
      previous.next_node = new_node
    end
    @length += 1

  end

  def remove(index)
    node = @head
    current = node
    iter = 0

    while iter < index
      previous = node
      current = node.next_node
      node = current
      iter+=1
    end

    if index == 0
      @head = current.next_node
    else
      previous.next_node = current.next_node
      current = previous
    end
        
    @length -= 1

  end

end


class Queue
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def add(number)
    @list.add(number)
  end
  
  def remove
    if @list.length > 0
      res = @list.get(0)
      @list.remove(0)
    else
      res = -1
    end
  res
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1
