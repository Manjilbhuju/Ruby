=begin
There is a string, , of lowercase English letters that is repeated infinitely many times. 
Given an integer, find and print the number of letter a's in the first n  letters of the infinite string.
=end

def repeatedString(s, n)
    # no of a in s
    a_in_s = s.count('a')
    # no of chars in s
    no_of_chars = s.length
    # divide n by s and store in multiplier
    multiplier = n/s.length
    # store the remainder of n divided by s
    remainder = n % no_of_chars
    # check if there is any remainder
    # if there is no remainder then, no of a in s * multipier is your answer
    if multiplier == 0
        result = a_in_s * multiplier
    # if there is a remainde then, no of a in s * multiplier + no of a in remainder is your answer
    else
        a_in_remainder = s[0,remainder].count('a')
        result = a_in_s * multiplier + a_in_remainder
    end
    return result
end

s = ('abc')
n = 20
puts repeatedString(s, n)