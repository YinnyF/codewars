=begin
https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1
=end

# my solution
def duplicate_count(text)
  counter = Hash.new(0) #creates a new hash that is a counter for each letter
  distinct_cases = 0
  text.downcase.split('').each {|i| counter[i] += 1} #counts the occurences of each letter and updates count
  counter.each {|letter, count| distinct_cases += 1 if count > 1}
  return distinct_cases
end