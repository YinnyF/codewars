=begin
https://www.codewars.com/kata/56bc28ad5bdaeb48760009b0
=end

# my solution
def remove_char(s)  
  string = ''
  for i in 1..s.split('').length-2
    string += s.split('')[i]
  end
  return string
end