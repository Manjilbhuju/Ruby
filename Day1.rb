=begin
ruby task where array has integer, float, Boolean, string.
get the following result:
- the count of each data type
- the sum of all integer
- the sum of all float
- the average of all float value
- get all prime number from integer
- Longest string
- group strings by size ex: 2 => am, is, 7: smarter
=end

array = [14,23,31,47,12,13,nil,true,false,2.4,1.5,3.2,9.0,"Spiderman","Witcher","Doctor Strange"]

def countofdatatypes(array)
    count_number = 0
    count_decimal = 0
    count_condition = 0
    count_text = 0

    array.each do |i|
        if i.is_a?(Integer)
            count_number = count_number + 1
        elsif i.is_a?(Float)
            count_decimal = count_decimal + 1
        elsif i.is_a?(String)
            count_text = count_text + 1
        else
            count_condition = count_condition + 1
        end
    end

    puts "Integer = #{count_number}"
    puts "Float = #{count_decimal}"
    puts "Boolean = #{count_condition}"
    puts "String = #{count_text}"
end

def sumofintegers(array)
    sum = 0

    array.each do |i|
        if i.is_a?(Integer)
            sum = sum + i
        end
    end

    puts "Sum of integer is #{sum}"
end

def sumoffloats(array)
    sum = 0

    array.each do |i|
        if i.is_a?(Float)
            sum = sum + i
        end
    end
    
    puts "Sum of floats is #{sum}"
end

def avgoffloats(array)
    sum = 0
    count = 0

    array.each do |i|
        if i.is_a?(Float)
            sum = sum + i
            count = count + 1
        end
    end

    puts "Average of floats is #{sum/count}"
end


def isnumprime(num)
    if num<2
        return false
    end
    for i in (2..num-1)
        if num%i == 0
            return false
        end
    end
    return true
end

def getprimenumfromarray(array)
    primelist = []
    array.each do |i|
        if i.is_a?(Integer)
            is_prime = isnumprime(i)
            if is_prime
                primelist.push(i)
            end
        end
    end
    return primelist
end
            

def longeststring(array)
    str = " "
    array.each do |i|
        if i.is_a?(String)
            if str.length < i.length
                str = i
            end
        end
    end
    puts "Longest String is #{str}"
end

def groupstringbysize(array)
    strgroup = Hash.new()

    array.each do |i|
        if i.is_a?(String)
            size = i.to_s.size
            strgroup[size] = i
        end
    end
    return strgroup 
end



puts countofdatatypes(array)
puts sumofintegers(array)
puts sumoffloats(array)
puts avgoffloats(array)
puts longeststring(array)
puts getprimenumfromarray(array)
puts groupstringbysize(array)