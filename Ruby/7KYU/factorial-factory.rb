=begin
https://www.codewars.com/kata/528e95af53dcdb40b5000171
=end

# my solution
# recursion
def factorial(n)
  if n < 0
    nil
  elsif n == 0
    1
  else
    n * factorial(n-1)
  end
end