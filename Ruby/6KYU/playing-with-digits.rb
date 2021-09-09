=begin
https://www.codewars.com/kata/5552101f47fc5178b1000050
=end

# my solution
def dig_pow(n, p)
  sum = 0
  n.to_s.split('').each do |x| 
    sum += x.to_i**p 
    p+=1
  end
  
  if sum.to_f % n == 0
    return sum / n
  else 
    return -1
  end
  
end
