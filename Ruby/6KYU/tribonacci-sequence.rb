=begin
https://www.codewars.com/kata/556deca17c58da83c00002db
=end

# my solution
def tribonacci(signature,n)
  return [] if n == 0    # special case for n == 0, return empty array
  return signature[0..n-1] if n <= 3 # easy return for n <= 3
  
  sequence = signature # create an array called sequence to store the resulting sequence. 
  
  for i in 0..n-4
      sequence << sequence[i, 3].inject(:+) # add the last three numbers of sequence and append it to the sequence.
  end
  return sequence  

end