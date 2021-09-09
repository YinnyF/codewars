=begin
https://www.codewars.com/kata/545cedaa9943f7fe7b000048
=end

# my solution
def panagram?(string)
  ispanagram = true
  counter = Hash.new(0) # default to 0 if other characters appear in the string
  
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  alphabet.each{|i| counter[i] = 0} #creates a hash that counts occurences of each letter.
    
  string.downcase.split('').map {|x| counter[x] += 1}
  # this updates the hash with the number of occurences. It additionally adds any other characters but the value is always >1.  
  counter.each { |letter,count| ispanagram = false if count < 1 } 
  # this marks ispanagram to false if the value of any key is less than 1.
  
  return ispanagram

end
