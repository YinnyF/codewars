=begin
https://www.codewars.com/kata/5502c9e7b3216ec63c0001aa
=end

# my solution
def open_or_senior(data)
  data.map { |person| person[0] >= 55 && person[1] > 7 ? "Senior" : "Open" }
end