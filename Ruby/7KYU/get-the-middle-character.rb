=begin
https://www.codewars.com/kata/56747fd5cb988479af000028
=end

# my solution
def get_middle(s)
  n = s.length
  n % 2 == 0 ? s.split('')[(n/2-1)..(n/2)].join('') : s.split('')[n/2]
end