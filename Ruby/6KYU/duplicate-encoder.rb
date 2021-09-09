=begin
https://www.codewars.com/kata/54b42f9314d9229fd6000d9c
=end

# my solution
def duplicate_encode(word)
  encoded_str="" # a variable to store the encoded string
  arr = word.downcase.split("") # split the word into an array and apply downcase
  arr.count{|n| arr.count(n) > 1 ? encoded_str << ")" : encoded_str << "("} 
  return encoded_str
end