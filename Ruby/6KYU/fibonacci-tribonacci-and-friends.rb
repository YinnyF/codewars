=begin
https://www.codewars.com/kata/556e0fccc392c527f20000c5
=end

# my solution
def Xbonacci(s,n)
  len = s.length 
  
  if n == 0 
    return []
  elsif n <= len
    return s[0..n-1]
  end  
  
  loop do
    break if s.length == n
    s << s[-len, len].inject(:+)
  end
  
  return s
end