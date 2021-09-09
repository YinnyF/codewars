=begin
https://www.codewars.com/kata/546e2562b03326a88e000020
=end

# my solution
def square_digits(num)
  num.to_s.split('').map { |x| x.to_i**2 }.join('').to_i
end
