=begin
https://www.codewars.com/kata/56b7526481290c2ff1000c75
=end

# my solution
def triple_shiftian(base,n)
  return base[n] if n <= 2
    
  (n-2).times { base << (4*base[-1])-(5*base[-2])+(3*base[-3]) }
  
  return base[n]
end
