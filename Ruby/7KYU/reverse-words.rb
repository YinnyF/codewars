=begin
https://www.codewars.com/kata/5259b20d6021e9e14c0010d4
=end

# my solution
def reverse_words(str)
  str.split(/\s/).map {|s| s.reverse}.join(" ")
end
