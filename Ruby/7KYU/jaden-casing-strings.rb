=begin
https://www.codewars.com/kata/5390bac347d09b7da40006f6
=end

# my solution
class String  
  def toJadenCase
    self.split(/\s/).map {|x| x.capitalize}.join(" ")
  end
end