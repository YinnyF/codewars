=begin
https://www.codewars.com/kata/55c45be3b2079eccff00010f
=end

# my solution
def order(words)
  key = Hash.new(0)
  words.split(' ').map { |word| key[word[/\d+/]] = word }
  key.sort.map {|key, value| value}.join(' ')
end