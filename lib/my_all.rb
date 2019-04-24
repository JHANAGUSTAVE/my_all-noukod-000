require 'pry'

def my_all?(collection)
    i = 0 
   block_return_values = [true, false, false]
  while i < collection.length 
  block_return_values << yield(collection[i])
      i += 1
  end
  
    if block_return_values.include?(false)
    false
  elsif block_return_values.include?(true)
    true
  else
    false
  end
end
