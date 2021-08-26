class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize data
		@data = data
	end
end

def array_to_tree(array, i = 0)
	return nil if i >= array.length || array[i] == 0

	node = Node.new(array[i])
	node.left = array_to_tree(array, 2*i+1)
	node.right = array_to_tree(array, 2*i+2)

	node
end

def valid_tree?(node, min, max)
	return true if node.nil?
	return false if node.data < min || node.data > max

	return valid_tree?(node.left, min, node.data-1) && valid_tree?(node.right, node.data+1, max)
end

def search_tree?(array)
	root = array_to_tree(array)
	valid_tree?(root, -100, 100)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false
