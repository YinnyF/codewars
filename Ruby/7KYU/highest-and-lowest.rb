=begin
https://www.codewars.com/kata/554b4ac871d6813a03000035
=end

# my solution
def high_and_low(numbers)
  array = numbers.split(" ").map {|i| i.to_i } 
  return "#{array.max} #{array.min}"
end