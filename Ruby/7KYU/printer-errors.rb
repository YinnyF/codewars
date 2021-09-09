=begin
https://www.codewars.com/kata/56541980fa08ab47a0000040
=end

# my solution
def printer_error(s)
	valid_chars = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm']
  numerator = 0
  s.each_char { |char| numerator += 1 if !valid_chars.include?(char) }
  denominator = s.length
  return ("#{numerator}/#{denominator}")
end