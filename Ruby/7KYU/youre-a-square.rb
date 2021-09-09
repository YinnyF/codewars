=begin
https://www.codewars.com/kata/54c27a33fb7da0db0100040e
=end

# my solution
def is_square(x)
  return false if x == -1  # return false for imaginary number case
  (x.to_f**0.5).modulo(1) == 0 # calculate the sqrt of x and check no decimals. 
end