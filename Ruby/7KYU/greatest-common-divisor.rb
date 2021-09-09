=begin
https://www.codewars.com/kata/5500d54c2ebe0a8e8a0003fd
=end

# my solution
# Euclids algorithm & recursion - This method can be very slow if one number is much larger than the other. So, the variant that follows is generally preferred.

def mygcd(x,y)
  if x == y
    return x
  elsif x > y
    return mygcd(x-y, y) # Euclids algorithm
  else
    return mygcd(y-x, x)
  end
end

# stack level too deep (SystemStackError) when testing expect(mygcd(1590771464,1590771620)).to eq(4)


 # Another solution
 def mygcd(x,y)
  y == 0 ? x : mygcd(y, x % y)
end

# Euclidean algorithm


