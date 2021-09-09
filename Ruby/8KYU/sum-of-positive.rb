=begin
https://www.codewars.com/kata/5715eaedb436cf5606000381
=end

# my solution
def positive_sum(arr)
  sum = 0
  arr.map{|x| sum+=x if x > 0}
  return sum
end