=begin
https://www.codewars.com/kata/55f8a9c06c018a0d6e000132
=end

# my solution
def validate_pin(pin)
  return false if pin.length != pin.scan(/\d/).length
  pin.scan(/\d/).length == 4 || pin.scan(/\d/).length == 6
end