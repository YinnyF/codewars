=begin
https://www.codewars.com/kata/517abf86da9663f1d2000003
=end

# my solution
def to_camel_case(str)
  arr = str.split('')
  switch = false
  
  new_arr = arr.map { |char|
    if char == "-" || char == "_"
      switch = true
      ""
    elsif switch == true
      switch = false
      char.upcase
    else
      char
    end
  }
  
  new_arr.join("")
end