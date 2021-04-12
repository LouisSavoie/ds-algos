# Satisfy each element in a set greedily with the least number of sets from a hash.
# Time Complexity: O(n^2)
# Complexity Explaination: Loops n times for each loop for n times.

require 'set'

def greedy_coverage(states_needed, stations)
    # initialize a set of stations to return
    final_stations = Set[]
    # while there are still elements to be satisfied,
    while !states_needed.empty?
        # initialize a new best station and a set of elements it satisfies for this round
        best_station = nil
        states_covered = Set[]
        # iterate through the stations,
        # find intersections between elements left to be satisfied
        # and elements for the current station.
        for station, states_for_station in stations
            covered = states_needed & states_for_station
            # if the station satisfies more elements than the current best station for this round,
            # make the current station the best station.
            if covered.length > states_covered.length
                best_station = station
                states_covered = covered
            end
        end
        # add the greedily chosen best station for this round to the set to return,
        # update the elements needed to exclude the elements satisfied by the best station
        final_stations.add(best_station)
        states_needed -= states_covered
    end
    # return the set of greedy stations
    return final_stations
end

# Test Data
states_needed = Set["mt", "wa", "or", "id", "nv", "ut", "ca", "az"]
stations = {
    "kone": Set["id", "nv", "ut"],
    "ktwo": Set["wa", "id", "mt"],
    "kthree": Set["or", "nv", "ca"],
    "kfour": Set["nv", "ut"],
    "kfive": Set["ca", "az"]
}

# Tests
puts "\nPass Test:"
puts "Stations: #{greedy_coverage(states_needed, stations)}"
puts "Expected: #<Set: {:kone, :ktwo, :kthree, :kfive}>"