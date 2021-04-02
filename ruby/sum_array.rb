# Sum an array.
# Time Complexity: O(n), linear

def sum(array)
    sum = 0
    for x in array do
        sum += x
    end
    return sum
end

nums = [1,2,3]
puts "sum is:   #{sum(nums)}"
puts "expected: 6"