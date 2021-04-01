def sum(array)
    array.length() === 0 ? (return 0) : (return array[0] + sum(array[1..-1]))
end

nums = [1,2,3]
puts "sum is: #{sum(nums)}"