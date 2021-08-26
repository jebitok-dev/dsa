class Node
    attr_reader :data
    attr_accessor :left, :right
  
    def initialize(data)
      @data = data
    end
  end
  
  class BST
    @root = nil
  
    def insert(node)
      if @root.nil?
        @root = node
      else
        current_node = @root
        previous_node = @root
  
        while !current_node.nil?
          previous_node = current_node
          if node.data < current_node.data
            current_node = current_node.left
          else
            current_node = current_node.right
          end
        end
  
        if node.data < previous_node.data
          previous_node.left = node
        else
          previous_node.right = node
        end
      end
      end
  
      def pre_order(node = @root)
        if node == nil
          return ''
        end
  
        result = "#{node.data} "
        result += pre_order(node.left)
        result += pre_order(node.right)
      end
    end
  
  
  def binary_search_tree(array)
    tree = BST.new
    array.each { |e| tree.insert(Node.new(e)) }
    tree.pre_order
  end
  
  puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
  # => "8 3 1 6 4 7 10 14 13"
  