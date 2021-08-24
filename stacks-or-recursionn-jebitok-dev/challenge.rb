class Node
    attr_reader :data
    attr_accessor :left, :right
  
    def initialize(data)
      @data = data
    end
  end
  
  def array_to_tree(array, i)
    return nil if i >= array.length || array[i] == 0
  
    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)
  
    node
  end
  
  def tree_height(tree_as_list)
    all_heights = []
    
    (tree_as_list.length - 1).downto(0) do |i|
      
      initial_height = if tree_as_list[i] == 0
        0
      else
        1
      end
  
      left_child_index = if tree_as_list[2*i + 1].nil?
        nil
      else
        all_heights.length - i - 1
      end
  
      left_child_height = if left_child_index.nil?
        0
      else
        all_heights[left_child_index]
      end
          
  
        right_child_index =  if tree_as_list[2*i + 2].nil? 
          nil 
        else
          left_child_index - 1
        end
  
      right_child_height = if right_child_index.nil? 
        0
      else 
        all_heights[right_child_index]
      end
  
        total_height = initial_height + [left_child_height,right_child_height].max
  
      all_heights.push(total_height)
  
   end
   return all_heights[-1]
  end
  
  puts tree_height([2, 7, 5, 2, 6, 0, 9])
  # => 3
  
  puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
  # => 4
  
  puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
  # => 4
  