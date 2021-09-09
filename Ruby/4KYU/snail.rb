=begin
https://www.codewars.com/kata/521c2db8ddc89b9b7a0000c1
=end

# my solution 1
def snail(array)
  return [] if array == []  # for a 0x0 array
  return array.flatten if array.length == 1  # for a 1x1 array
  
  k = array[0].length * 2 - 3 # for an n x n array, a snail will have to traverse (2n - 3) + 2 edges. 
  trail = []      # this is the snail trail
  
  trail  = trail  + array.shift  # these are the first 2 edges the snail will always have to travel.
  array = array.transpose
  trail  = trail  + array.pop 
  
  for i in (1..k) # loop through these instructions k = (2n - 3) times to arrive at the end of the trail
    array = array.reverse.transpose
    trail  = trail  + array.pop
  end  
  return trail 
end

# each 'shift' or 'pop' represents a snail 'travelling' on the edge, it concatenates the path to the 'trail' array, and removes the path from the original array.


# solution to be improved