=begin
https://www.codewars.com/kata/514b92a657cdc65150000006
=end

# my solution
def solution(number)
  sum = 0
  for i in 1..number-1
    sum += i if i % 3 == 0 || i % 5 == 0
  end
  return sum
end
