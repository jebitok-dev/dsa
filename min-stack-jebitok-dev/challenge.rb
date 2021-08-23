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
  
  
  class Stack
    attr_accessor :list 
    
    def initialize
      @list = LinkedList.new
    end
  
    def push(number)
      @list.add(number)
    end
    
    def pop
      res = @list.get(@list.length - 1)
      @list.remove(@list.length - 1)
      res
    end
    
    def min
      arr = []
      iter = 0
      while (iter < @list.length)
        arr.push(@list.get(iter))
        iter += 1
      end
      p arr
      arr.sort!
      arr[0]
    end
  
  end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.min
  # => 3
  
  stack.pop()
  stack.push(7)
  puts stack.min
  # => 3
  
  stack.push(2)
  puts stack.min
  # => 2
  
  stack.pop()
  puts stack.min
  # => 3
  