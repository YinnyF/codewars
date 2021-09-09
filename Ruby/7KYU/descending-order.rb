=begin
https://www.codewars.com/kata/5467e4d82edf8bbf40000155
=end

# my solution
def descending_order(n)
  n.to_s.split('').sort! {|first, second| second <=> first}.join.to_i 
end
