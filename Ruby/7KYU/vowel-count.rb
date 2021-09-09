=begin
https://www.codewars.com/kata/54ff3102c1bad923760001f3
=end

# my solution
def get_count(input_str)
  counter = Hash.new
  vowels = [ 'a', 'e', 'i', 'o', 'u' ]
  vowels.each {|x| counter[x] = 0}
  
  input_str.split('').map {|x| counter[x] += 1 if vowels.include? x}
  
  sum = 0
  counter.each {|x,y| sum += y} 
  
  return sum
end
