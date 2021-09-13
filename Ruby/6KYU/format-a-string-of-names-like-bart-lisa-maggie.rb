=begin
https://www.codewars.com/kata/53368a47e38700bd8300030d

adtl test for when given blank input
=end

# my solution 13/09/21
def list names
  return "" if names.empty?

  names = names.map { |hash| hash[:name] }
  
  return names.length > 1 ? names[0...-1].join(", ") + " & " + names[-1] : names[0]
end
