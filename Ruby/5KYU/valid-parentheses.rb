=begin
https://www.codewars.com/kata/52774a314c2333f0a7000688
=end

# my solution 10/09/21
def valid_parentheses(string)
  validity_checker = 0
  
  string.split("").each do |char|
    if char == "("
      validity_checker += 1
    elsif char == ")"
      validity_checker -= 1
    end
    
    return false if validity_checker < 0
  end
  
  validity_checker == 0
end

# notes
=begin
Have a counter that:
  increases by 1 if an opening parentheses is encountered
  decreased by 1 if a closing parentheses is encountered

Iterate through the string one character at a time: 
  if at any point the counter is negative, then it is an invalid parentheses
  if the resulting amount on the counter is not 0 then it means the parentheses do not have their matching pairs
=end
