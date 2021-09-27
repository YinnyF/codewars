=begin
https://www.codewars.com/kata/59e49b2afc3c494d5d00002a
=end

# my solution 27/09/21
def sort_vowels(s)
  return "" if s.class != String
  
  string = ""
  vowels = ['a', 'e', 'i', 'o', 'u']
  
  s.split('').map { |char| vowels.include?(char.downcase) ? string << "|#{char}\n" : string << "#{char}|\n" }
  
  return string.chomp
end

# notes
# Can use .join("\n") after the map to avoid chomping at the end and use implicit return.