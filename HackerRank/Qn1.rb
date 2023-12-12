=begin
There is a large pile of socks that must be paired by color. 
Given an array of integers representing the color of each sock, 
determine how many pairs of socks with matching colors there are.
=end

def sockMerchant(n, ar)
    # Write your code here
    sock_count = Hash.new(0)

    ar.each {|sock| sock_count[sock] += 1}
    
    total_pairs = 0
    sock_count.values.each{|total| total_pairs += total/2}
    
    total_pairs
end

n = 7
ar = [1,2,1,9,1,3,0]
puts sockMerchant(n, ar)