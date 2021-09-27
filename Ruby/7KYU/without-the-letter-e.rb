=begin
https://www.codewars.com/kata/594b8e182fa0a0d7fc000875
=end

# my solution 27/09/21
def find_e(s)
  if !s || s.empty?
    return s
  elsif s.downcase.count("e") == 0 
    return "There is no \"e\"."
  else
    return "#{s.downcase.count("e")}"
  end
end
