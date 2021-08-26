class Node
    attr_reader :data
    attr_accessor :left, :right
    
    def initialize data
      @data = data
    end
  end
  
  # helper function
  def array_to_tree(array, i=0)
    return nil if i >= array.length || array[i] == 0
  
    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)
  
    node
  end
  
  # helper function
  def height(node)
    if node.nil?
      return 0
    end
    
    left_height = height(node.left)
    right_height = height(node.right)
  
    [left_height, right_height].max + 1
  end
  
  def balanced?(tree)
    return true if tree.nil?
    left_height = height(tree.left)
    right_height = height(tree.right)
    if (left_height-right_height).abs <= 1 && balanced?(tree.left) && balanced?(tree.left)
      return true
    end
    false
  end
  
  def balanced_tree?(array)
    root = array_to_tree(array)
    balanced?(root)
  
  end
  
  puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
  # => false
  
  puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
  # => true
  