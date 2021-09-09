=begin
https://www.codewars.com/kata/54e6533c92449cc251001667
=end

# my solution
def unique_in_order(iterable)
  iterable = iterable.split('') if iterable.is_a? String
  
  arr = [] 
  
  for i in iterable
    arr << i 
    arr.pop if arr[-1]==arr[-2]    
  end
  
  return arr
  
end

=begin
the input may be a string or an array, we must convert strings to an array first
set up an array 'arr' that stores the final answer.
iterate through the array, appending the element to arr each time.
if the last 2 elements in the array are the same, pop it.
return the arr
=end