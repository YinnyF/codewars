=begin
https://www.codewars.com/kata/526571aae218b8ee490006f4
=end

# my solution
def count_bits(n)
  binary_string = ""
  
  while n > 0  
    binary_string << "#{n % 2}"  # store the remainder in the binary string
    n = n/2  # update n to calculate the next remainder
  end
  return binary_string.count "1" # count the number of bits equal to 1. 
end