=begin
https://www.codewars.com/kata/57356c55867b9b7a60000bd7
=end

# my solution
def basic_op(operator, value1, value2)
  eval "#{value1} #{operator} #{value2}"
end