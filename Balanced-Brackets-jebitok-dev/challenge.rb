def balanced_brackets?(string)
    stack = []
    opening = ['(', '[', '{']
    closing = [')', ']', '}']
  
    splitted = string.split('')
  
    splitted.each do |el|
      if opening.include? el
        stack.push(el)
      elsif closing.include? el
        return false if stack.empty?
        top = stack.pop
        if top == '(' && el != ')' || top == '[' && el != ']' || top == '{' && el != '}'
          return false
        end
      end
    end
  
    stack.empty?
  end
  
  puts balanced_brackets?('(hello)[world]')
  # => true
  
  puts balanced_brackets?('([)]')
  # => false
  
  puts balanced_brackets?('[({}{}{})([])]')
  # => true
  