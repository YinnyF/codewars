=begin
https://www.codewars.com/kata/546f922b54af40e1e90001da
=end

# my solution
def alphabet_position(text)
  key = Hash.new('')
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  alphabet.each_with_index{|x, i| key[x] = i + 1}
  text.downcase.gsub(/\s*[^a-z]*/ , '').split('').map {|char| key[char] }.join(' ')
end