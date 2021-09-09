=begin
https://www.codewars.com/kata/576bb71bbbcf0951d5000044
=end

# my solution
def count_positives_sum_negatives(lst)
  count_positives = lst.select {|x| x > 0}.length
  sum_negatives = lst.select {|x| x < 0}.inject(0, :+)
  
  return lst.empty? ? [] : [count_positives, sum_negatives]
end