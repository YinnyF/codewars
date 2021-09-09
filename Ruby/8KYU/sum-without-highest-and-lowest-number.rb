=begin
https://www.codewars.com/kata/576b93db1129fcf2200001e6
=end

# my solution
def sum_array(arr)
  if !arr.nil?  
    highest = arr.sort!.pop
    lowest = arr.reverse!.pop
    return arr.inject(0, :+)
  else
    return 0
  end
end