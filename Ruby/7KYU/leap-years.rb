=begin
https://www.codewars.com/kata/526c7363236867513f0005ca
=end

# my solution
def is_leap_year(year)
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
end
