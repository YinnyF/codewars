=begin
https://www.codewars.com/kata/54da5a58ea159efa38000836
=end

# my solution
def find_it(seq)
  counter = Hash.new(0)
  seq.each{ |i| counter[i] += 1} 
  #create hash that counts occurences of each number.

  counter.each {|num, count| return num if count%2 == 1  } 
  #return the number when the number of occurences is odd.
  
end
