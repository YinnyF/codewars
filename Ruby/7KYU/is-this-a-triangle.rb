=begin
https://www.codewars.com/kata/56606694ec01347ce800001b
=end

# my solution 13/09/21
def is_triangle(a,b,c)
  lengths = [a, b, c].sort!
  lengths[0] + lengths[1] > lengths[2]
end
