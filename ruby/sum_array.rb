# Sum an array.
# Time Complexity: O(n), linear

def sum(array)
    # set initial vlue of sum
    sum = 0
    # iterate through every value in array and add it to sum
    for x in array do
        sum += x
    end
    # return the sum
    return sum
end

# Test Data
nums = [1,2,3]

# Tests
puts "sum is:   #{sum(nums)}"
puts "expected: 6"