=begin
https://www.codewars.com/kata/5656b6906de340bd1b0000ac
=end

# my solution
def longest(a, b)
  c = (a + b).downcase.split('').sort!
  counter = Hash.new(0)
  
  c.each do |letter|
    counter[letter] += 1    
  end
  
  counter.map {|letter, count| letter}.join('')
  
end