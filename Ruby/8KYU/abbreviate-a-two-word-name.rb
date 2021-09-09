=begin
https://www.codewars.com/kata/57eadb7ecd143f4c9c0000a3
=end

# my solution
def abbrev_name(name)
  array = name.split(" ").map {|x| x.chars.first.capitalize}
  return "#{array[0]}.#{array[1]}"
end