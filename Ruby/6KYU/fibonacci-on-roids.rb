=begin
https://www.codewars.com/kata/596144f0ada6db581200004f
=end

# my solution
# recursion
def custom_fib(signature,indexes,n)
  return signature[0] if n == 0
  
  next_num = 0 
  for i in 0..indexes.length-1
    next_num += signature[indexes[i]]  
  end

  custom_fib(signature[1..signature.length-1] << next_num , indexes, n-1)
  
end