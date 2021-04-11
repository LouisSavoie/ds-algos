# Breadth first search for the shortest path to a value in a data.
# Time Complexity: O(v + e)

def search(data, letter)
    
    # create a queue to store elements to check
    q = Queue.new

    # enqueue root node neighbors
    for x in data[data.keys[0]]
        q.enq(x)
    end

    # loop until queue is empty
    while !q.empty?
        #test: puts "\npersons in queue: #{q.size()}"

        # dequeue an element to check
        person = q.deq()
        #test: puts "inspecting: #{person}"

        # check element
        # if element includes substring, return element
        if person[-1] == letter
            return person
        # if element does not include substring, enqueue their neighbors
        else
            for x in data[person]
                q.enq(x)
            end
        end

    end

    # if queue is empty the element is not in the data, return nil
    puts nil

end

# Test Data
data = {
    you: [:alice, :bob, :clair],
    alice: [:peggy],
    bob: [:anuj, :peggy],
    clair: [:thom, :jonny],
    anuj: [],
    peggy: [],
    thom: [],
    jonny: []
}

# Tests
puts "\nFail Test:"
puts "Found person:    #{search(data, "o")}"
puts "Expected person: nil"

puts "\nPass Test:"
puts "Found person:    #{search(data, "m")}"
puts "Expected person: thom"
