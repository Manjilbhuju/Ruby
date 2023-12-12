=begin
  An avid hiker keeps meticulous records of their hikes. During the last hike that took exactly  steps, for every step it was noted if it was an uphill, , or a downhill,  step. Hikes always start and end at sea level, and each step up or down represents a  unit change in altitude. We define the following terms:

A mountain is a sequence of consecutive steps above sea level, starting with a step up from sea level and ending with a step down to sea level.
A valley is a sequence of consecutive steps below sea level, starting with a step down from sea level and ending with a step up to sea level.
Given the sequence of up and down steps during a hike, find and print the number of valleys walked through.
=end

def countingValleys(steps)
    # Write your code here
    altitude = 0
    valley = 0

    steps.each_char do|step|
        if step == "U"
            altitude += 1
        else step == "D"
            altitude -= 1
        end

        if step == "U" && altitude == 0
            valley += 1
        end
    end
    valley
end

puts countingValleys("DDUUUUDD")