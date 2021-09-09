=begin
https://www.codewars.com/kata/5a1a76c8a7ad6aa26a0007a0
=end

# my solution
# recursion - ugly
def life_path_number(birthdate)
  arr = birthdate.split("-")
  return arr[0] if arr[0].length == 1 # base case: if length of the string is 1 then return that string. 
  
  if arr.length == 3
    # do something to original array ["1955", "10", "28"]
    total = life_path_number(life_path_number("#{arr[0].to_i.digits.sum}") + life_path_number("#{arr[1].to_i.digits.sum}") + life_path_number("#{arr[2].to_i.digits.sum}"))
    return total.to_i    
  else # arr.length == 1
    return life_path_number("#{arr[0].to_i.digits.sum}") # keep summing the integers in the array
  end
  
end