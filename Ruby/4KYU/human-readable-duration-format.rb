=begin
https://www.codewars.com/kata/52742f58faf5485cae000b9a

Additional Test Cases:
Test.assert_equals(format_duration(0), "now")
=end

# my solution 13/09/21
def format_duration(seconds)
  return "now" if seconds == 0
  
  combinations = {year: 60*60*24*365, day: 60*60*24, hour: 60*60, minute: 60, second: 1}
  s = []
  
  combinations.each do |key, value|
    if seconds / value > 0
      s << pluralise(seconds / value, "#{key}")
      seconds = seconds % value
    end
  end
  
  s.length > 1 ? s[0...-1].join(", ") + " and " + s[-1] : s[0] 
end

def pluralise(number, text)
  return number == 1 ? "#{number} #{text}" : "#{number} #{text}s"
end
