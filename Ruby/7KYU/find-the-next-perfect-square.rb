=begin
https://www.codewars.com/kata/56269eb78ad2e4ced1000013
=end

# my solution
def find_next_square(sq)
  return -1 if sq < 0 || sq**0.5 % 1 != 0
  ((sq ** 0.5)+ 1) ** 2
end
