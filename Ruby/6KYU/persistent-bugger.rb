=begin
https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec
=end

# my solution
def persistence(n)
  i = 0         # no. of iterations of the while loop
  while n.to_s.split('').length > 1
    n = n.to_s.split('').map {|x| x.to_i}.inject(:*)
    i += 1      #increases the interation count
  end
  return i 
end