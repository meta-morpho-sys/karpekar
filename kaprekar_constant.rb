# The Karpekar's Constant

### Take a four digit number( must have at least 2 different digits)
# Sort it from biggest to smallest
# Subtract from the sorted (big) the mirror image of it (small)
# Take the result and repeat the process it converges to Kaprekar’s constant '6174'
# Once this fixed point is reached, the process will simply cycle.
# Exit after the second cycle.
# Tasks after implementation:
# Count steps to completion

num = 1234
puts "hi there. you starting number is #{num}"

until num == 6174
  num_sorted = num.to_s.split('').sort
  ascending = num_sorted.join('').to_i
  ascend_padding = sprintf('%04d' % ascending)
  descending = num_sorted.reverse.join('').to_i
  num = descending - ascending
  puts "#{descending} - #{ascend_padding} = #{num}"
end