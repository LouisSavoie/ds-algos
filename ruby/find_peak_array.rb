# Find index of a peak value in an unsorted array if it exists.
# Peak = if n > n -1 && if n > n + 2
# Time Complexity: O(n)

def search(array)

    # iterate through the array until the peak is found, or until iteration is complete
    for x in array
        # if element is the first in the array and is a peak, return index of peak
        if array.index(x) == 0 && x > array[array.index(x) + 1]
            return array.index(x)
        # if element is the last in the array and is a peak, return index of peak
        elsif array.index(x) == array.length - 1 && x > array[array.index(x) - 1]
            return array.index(x)
        # if element == peak, return index of element
        elsif x > array[array.index(x) - 1] && x > array[array.index(x) + 1]
            return array.index(x)
        end
    end

    # if no peak is found, return nil
    return nil

end

# Test Data
# index:    0,1,2,3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16
nums_one = [2,3,5,8,19,26,98,99,99,45,54,89,89,10,12,16,16]

# index:    0,1,2,3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15
nums_two = [2,3,5,8,19,26,98,99,45,54,89,89,10,12,16,16]

# Tests
puts "\nFail Test:"
puts "Found index:    #{search(nums_one)}"
puts "Expected index: nil"

puts "\nPass Test:"
puts "Found index:    #{search(nums_two)}"
puts "Expected index: 7"