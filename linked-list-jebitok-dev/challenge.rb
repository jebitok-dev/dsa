class Node
    attr_accessor :value, :next_node
    
    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
end

class LinkedList
    def initialize
        @head = nil
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
    end
end

list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(1)
# => 11

puts list.get(3)
# => 5
