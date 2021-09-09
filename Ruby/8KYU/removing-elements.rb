=begin
https://www.codewars.com/kata/5769b3802ae6f8e4890009d2
=end

# my solution
def remove_every_other(arr)
  arr.each_with_index {|element, index| arr.delete_at(index+1) }
end