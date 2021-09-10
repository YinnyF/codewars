=begin
https://www.codewars.com/kata/585d7d5adb20cf33cb000235

Additional Test Cases:
    Test.assert_equals(find_uniq([1, 2, 2, 2]), 1);
    Test.assert_equals(find_uniq([2, 2, 2, 1]), 1);
=end

# my solution 10/09/21 
def find_uniq(arr)
  return arr[0] if arr[1..-1].uniq.count == 1
  
  for i in 1..(arr.length-1)
    return arr[i] if (arr[0..i-1] + arr[i+1..-1]).uniq.count == 1
  end
end

# notes
=begin
first solution is invalid for very long arrays `Execution Timed Out (12000 ms)`

need to think of a more efficient way
=end

# my solution #2 10/09/21
def find_uniq(arr)
  types = arr.uniq
  
  arr[0..2].uniq.count == 1 || arr[0..1].uniq.count == 1 || arr[1..2].uniq.count == 1 ? types.delete(arr[1]) : types.delete(arr[0])

  return types[0]
end

# explanation
=begin
Find all unique elements in array and save it to `types`.
Check the first 3 elements in arr.
You will need at minimum 3 elements of the array to know which one in `types` the unique one is.
=end