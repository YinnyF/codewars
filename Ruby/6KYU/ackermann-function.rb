=begin
https://www.codewars.com/kata/53ad69892a27079b34000bd9
=end

# my solution
def Ackermann(m,n)
  return if !(m.is_a? Integer) || m < 0
  return if !(n.is_a? Integer) || n < 0
  
  if m == 0
    return n + 1
  elsif m > 0 && n == 0
    return Ackermann(m-1, 1)
  else
    return Ackermann(m-1,Ackermann(m, n-1))
  end
end

# this one was annoying because they allowed m = "a" and also required validity checks that m and n are > 0. 