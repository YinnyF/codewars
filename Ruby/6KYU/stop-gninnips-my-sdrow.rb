=begin
https://www.codewars.com/kata/5264d2b162488dc400000001
=end

# my solution
def spin_words(string)
  string.split(" ").map {|x| x.length > 4 ? x.reverse : x}.join(" ")
end