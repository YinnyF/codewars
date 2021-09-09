=begin
https://www.codewars.com/kata/57eae65a4321032ce000002d
=end

# my solution
def fake_bin(s)
  s.gsub(/[0-4]/, "0").gsub(/[5-9]/, "1")
end