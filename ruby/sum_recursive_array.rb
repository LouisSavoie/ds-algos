# Sum an array recursivly.
# Time Complexity: 

def sum(array)
    array.length() === 0 ? (return 0) : (return array[0] + sum(array[1..-1]))
end

# Test Data
nums = [1,2,3]

# Tests
puts "sum is:   #{sum(nums)}"
puts "expected: 6"