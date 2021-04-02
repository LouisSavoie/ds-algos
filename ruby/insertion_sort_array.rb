# Insertion sort an array.
# Time Complexity: O(n^2)

def sort(array)
    array[1..-1].each do |x|
        while x < array[array.index(x) - 1] && array.index(x) != 0
            array.insert(array.index(x) - 1, array.delete(x))
            # test: puts "x = #{x}, index = #{array.index(x)}"
        end
    end
    return array
end

nums = [5,2,4,6,1,3]
puts "sorted:   #{sort(nums)}"
puts "expected: [1, 2, 3, 4, 5, 6]"