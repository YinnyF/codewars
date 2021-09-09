=begin
https://www.codewars.com/kata/5667e8f4e3f572a8f2000039
=end

# my solution
def accum(s)
  s.split('').map.with_index {|x,i| (x*(i+1)).capitalize}.join("-") 
end
