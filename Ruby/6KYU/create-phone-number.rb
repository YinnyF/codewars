=begin
https://www.codewars.com/kata/525f50e3b73515a6db000b83
=end

# my solution
def create_phone_number(numbers)
  "(#{numbers.join[0..2]}) #{numbers.join[3..5]}-#{numbers.join[6..9]}"
end