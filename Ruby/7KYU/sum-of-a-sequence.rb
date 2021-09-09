=begin
https://www.codewars.com/kata/586f6741c66d18c22800010a
=end

# my solution
# recursion
def sequence_sum(begin_number, end_number, step)
  begin_number <= end_number ? sum = begin_number + sequence_sum(begin_number+step, end_number, step) : 0
end