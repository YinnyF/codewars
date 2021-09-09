=begin
https://www.codewars.com/kata/578aa45ee9fd15ff4600090d
=end

# my solution
def sort_array(source_array)
  sorted_odds = source_array.select {|number| number if number % 2 == 1}.sort
  source_array.map { |number| number % 2 == 0 ? number : sorted_odds.shift}
end
