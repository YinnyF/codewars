=begin
https://www.codewars.com/kata/541c8630095125aba6000c00
=end

# my solution
def digital_root(n)
  while n.to_s.split('').length > 1
    n = n.to_s.split('').reduce(0) {|sum, num| sum + num.to_i }
  end
  return n
end
