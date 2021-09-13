=begin
https://www.codewars.com/kata/520b9d2ad5c005041100000f
=end

# my solution 13/09/21
def pig_it text
  text.split(" ").map {|word| word.match(/\A\W*\z/) ? word : "#{word[1..-1]}#{word[0]}ay" }.join(" ")
end

# notes
