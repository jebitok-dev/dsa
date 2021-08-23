class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
        @value = value
      @next_node = next_node
    end
  end
  
  class LinkedList
    #setup head and tail
    def initialize
      @head = nil
    end
  
    def add(number)
      node = Node.new(number)
      if @head.nil?
        @head = node
      elsif @head.next_node.nil?
        @head.next_node = node
        @new_node = node
      else
        @new_node.next_node = node
        @new_node = node
      end
    end
  
    def get(index)
      current_node = @head
      current = current_node
      iter = 0
      while iter < index
        current = current_node.next_node
        current_node = current
        iter+=1
      end
      current.value
    end
  end
  
  list = LinkedList.new
  
  list.add(3)
  list.add(5)
  list.add(7)
  
  puts list.get(0)
  # => 5
  