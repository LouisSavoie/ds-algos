# Binary search for the index of a value in a sorted array.
# Time Complexity: O(log n)

def search(array, x)
    # initial index positions of start, middle, and end of range to be searched on first iteration
    middle = array.length / 2
    a = 0
    b = array.length - 1
    #test: puts "initial middle: #{middle}"

    # while range of array being serached is > 1 in length
    while a <= b
        # if x is found, return it's index
        if array[middle] == x
            return middle
        # if index at middle of range being searched is < x, refine search to right half of range next iteration
        elsif array[middle] < x
            a = middle + 1
            middle = (a + b) / 2
            #test: puts "middle < x, middle: #{middle}"
        # if index at middle of range being searched is > x, refine search to left half of range next iteration
        else
            b = middle - 1
            middle = (a + b) / 2
            #test: puts "middle > x, middle: #{middle}"
        end
    end
    # if x is not in the array, return nil
    return nil
end

# Test Data
# length: 10
# index:0,1,2,3, 4, 5, 6, 7, 8, 9,10,11,12,13,14
nums = [2,3,5,8,10,12,16,19,26,45,54,89,92,98,99]

# Tests
puts "\nFail Test:"
puts "Found index:    #{search(nums, 56)}"
puts "Expected index: nil"

puts "\nPass Test:"
puts "Found index:    #{search(nums, 5)}"
puts "Expected index: 2"