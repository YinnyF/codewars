=begin
https://www.codewars.com/kata/523f5d21c841566fde000009
=end

# my solution
def array_diff(a, b)
  a.reject{|i| b.include?(i)}       
end