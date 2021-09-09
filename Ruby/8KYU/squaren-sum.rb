=begin
https://www.codewars.com/kata/515e271a311df0350d00000f
=end

# my solution
def square_sum(numbers)
  sum = 0
  for i in numbers
    sum += i**2
  end 
  return sum
end