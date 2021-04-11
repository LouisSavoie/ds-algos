# Quick sort an array recusively.
# Time Complexity: O(n log n)

def sort(array)
    # if array or subarray is less than 2, it doesn't need to be sorted.
    # if this is the first iteration the algorithm is done.
    # if this a subarray, the algorithm has reached the base case and this is the last iteration.
    if array.length < 2
        return array
    # if the array or subarray is longer than 1 it must be sorted.
    else
        # the array or subarray will be split into a pivot element,
        # a subarray of elements less than the pivot,
        # and a subarray of elements greater than the pivot.
        pivot = array[0]
        less = []
        greater = []
        for x in array[1..-1]
            if x <= pivot
                less << x
            else
                greater << x
            end
        end
        #test: puts "less = #{less}"
        #test: puts "pivot = #{pivot}"
        #test: puts "greater = #{greater}"
        # return an array of the subarray of elements less than the pivot, then the pivot, then the subarray of elements greater than the pivot.
        return sort(less).push(pivot).concat(sort(greater))
    end
end

# Test Data
# Indexes: 0,1,2, 3,4,5,6,7,8,9,10
nums =    [5,2,8,-1,4,6,1,3,9,0, 7]

# Tests
puts "\nPass Test:"
puts "Sorted:   #{sort(nums)}"
puts "Expected: [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]"