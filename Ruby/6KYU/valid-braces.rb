=begin
https://www.codewars.com/kata/5277c8a221e209d3f6000b56

Additional tests
  Test.assert_equals(validBraces( "(){}[]" ), true)
  Test.assert_equals(validBraces( "([{}])" ), true)
  Test.assert_equals(validBraces( "(}" ), false)
  Test.assert_equals(validBraces( "[(])" ), false)
  Test.assert_equals(validBraces( "[({})](]" ), false)
=end

# my solution 10/09/21
def validBraces(braces)
  validity_checker = [0, 0, 0] # round, curly, square
  open = []
  
  braces.split("").each do |char|
    case char
      when "("
        validity_checker[0] += 1
        open.push("r")
      when ")"
        validity_checker[0] -= 1
        return false if open.pop != "r"
      when "{"
        validity_checker[1] += 1
        open.push("c")
      when "}"
        validity_checker[1] -= 1
        return false if open.pop != "c"
      when "["
        validity_checker[2] += 1
        open.push("s")
      when "]"
        validity_checker[2] -= 1
        return false if open.pop != "s"
    end
    
    return false if validity_checker.any?(&:negative?)
    
  end
  
  validity_checker.all?(&:zero?)
end

# notes
=begin
An similar kata to 5KYU/valid-parentheses.rb

Since I followed the same logic as valid-parentheses, the solution is not that great.
=end

# refactoring my solution 10/09/21
def validBraces(braces)
  validity_checker = []
  
  braces.split("").each do |char|
    case char
      when "("
        validity_checker.push("r")
      when ")"
        return false if validity_checker.pop != "r"
      when "{"
        validity_checker.push("c")
      when "}"
        return false if validity_checker.pop != "c"
      when "["
        validity_checker.push("s")
      when "]"
        return false if validity_checker.pop != "s"
    end   
  end
  
  validity_checker.empty?
end
