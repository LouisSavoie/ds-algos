# Greedily pick elements from a hash to schedule as many subjects as possible within a time frame
# Time Complexity: O(n^2)
# Complexity Explaination: Loops n times for each loop for n times

def greedy_subjects(subjects)

    schedule = []
    current_subject = subjects.keys.first
    #Test: p "starting current_subject: #{current_subject}"

    for subject, times in subjects
        if times[:end] < subjects[current_subject][:end]
            current_subject = subject
            #Test: p "new current_subject: #{current_subject}"
        end
    end

    schedule.push(current_subject)
    #Test: p "schedule after first subject: #{schedule}"

    while subjects[current_subject][:end] <= subjects[subjects.keys.last][:start]
        for subject, times in subjects
            if times[:start] >= subjects[current_subject][:end]
                current_subject = subject
                #Test: p "new current_subject: #{current_subject}"
                schedule.push(current_subject)
            end
        end
    end

    #Test: p "final current_subject: #{current_subject}"
    #Test: p "schedule after all subjects: #{schedule}"

    return schedule

end

# Test Data
subjects = {
    art: {start: 900, end: 1000},
    english: {start: 930, end: 1030},
    math: {start: 1000, end: 1100},
    science: {start: 1030, end: 1130},
    music: {start: 1100, end: 1200}
}

Tests
puts "\nPass Test:"
puts "Stations: #{greedy_subjects(subjects)}"
puts "Expected: [:art, :math, :music]"