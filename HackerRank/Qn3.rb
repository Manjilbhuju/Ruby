=begin
There is a new mobile game that starts with consecutively numbered clouds.
Some of the clouds are thunderheads and others are cumulus. 
The player can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus  or . 
The player must avoid the thunderheads. 
Determine the minimum number of jumps it will take to jump from the starting postion to the last cloud. 
It is always possible to win the game.
For each game, you will get an array of clouds numbered  if they are safe or  if they must be avoided.
=end

def jumpingOnClouds(c)
    # Write your code here
    jump = 0
    i = 0

    while i < c.length - 1
        if i + 2 < c.length && c[i + 2] == 0
            i += 2
        else
            i += 1
        end
        jump += 1
    end
    return jump
end

c = [0,0,1,0,0,0,1,1,0,0]
puts jumpingOnClouds(c)