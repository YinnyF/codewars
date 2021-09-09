=begin
https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9
=end

# my solution
def find_short(s)
  l = 100
  s.split(' ').each {|x| l = x.length if x.length < l}
  return l
end