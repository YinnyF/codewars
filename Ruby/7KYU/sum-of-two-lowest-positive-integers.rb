=begin
https://www.codewars.com/kata/558fc85d8fd1938afb000014
=end

# my solution
def sum_two_smallest_numbers(numbers)
  numbers.sort!
  numbers[0] + numbers[1]
end