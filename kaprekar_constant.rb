# The Karpekar's Constant

### Take a four digit number( must have at least 2 different digits)
# Sort it from biggest to smallest
# Subtract from the sorted (big) the mirror image of it (small)
# Take the result and repeat the process it converges to Kaprekar’s constant '6174'
# Once this fixed point is reached, the process will simply cycle.
# Exit after the second cycle.
# Tasks after implementation:
# Count steps to completion

num = 2035
puts "Hi there. Your starting number is #{num}."

def sort_num(num)
  num.to_s.chars.sort
end

def ascend_padded(num)
  ascending = sort_num(num).join.to_i
  ascend_padding = sprintf('%04d' % ascending)
  return ascend_padding, ascending
end

until num == 6174
  ascend_padding, ascending = ascend_padded(num)
  descending = sort_num(num).reverse.join.to_i
  num = descending - ascending
  puts "#{descending} - #{ascend_padding} = #{num}"
end
