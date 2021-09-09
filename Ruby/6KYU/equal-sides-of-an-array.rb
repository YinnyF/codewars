=begin
https://www.codewars.com/kata/5679aa472b8f57fb8c000047
=end

# my solution
def find_even_index(arr)  #e.g. [1,2,3,4,3,2,1]
  return 0 if arr == []
  index = [] 
  
  for i in 1..(arr.length-2) # iterates through index = 1 to index = 5  i.e. 1..n-1  skipping 0 and skipping n
    if arr[0..i-1].inject(:+) == arr[i+1..1000].inject(:+)
      index << i # append an index number to the array "index" when it satisfies the rule.
    end  
  end
  
  index << -1  # append -1 (as a last resort) i.e. no such index exists
  
  if arr[1..1000].inject(:+)==0 || arr.length ==1 # check the case for index = 0
    return 0     
  elsif index[0] > -1 # check the index array, the first element may or may not be -1. if it is not -1 then it was added in the for loop. 
    return index[0]
  elsif arr[0..-2].inject(:+)==0 # check the case where index = 6 i.e. n
    arr.length-1
  else
    return index[0]
  end
  
end