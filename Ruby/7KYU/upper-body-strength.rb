=begin
https://www.codewars.com/kata/571640812ad763313600132b
=end

# my solution
# Recursion
def alex_mistakes(number_of_katas, time_limit)
  time_left = time_limit - (6 * number_of_katas)
  
  if time_left < 5 # no time to complete pushups
    return 0
  else 
    return 1 + alex_mistakes(0, (time_left-5)/2.to_i) # 1 pushup & recursion
  end
end

=begin 
pushups=1 mins_taken=5 cumulative=5
pushups=2 mins_taken=10 cumulative=15
pushups=3 mins_taken=20 cumulative=35
pushups=4 mins_taken=40 cumulative=75

we have the cumulative number (i.e. time left), want to find the relationship:
75, 35, 15, 5
the number of iterations we do is equal to the number of pushups. 
to get from 75 to 35 we need to -5 then divide by 2.
This sets up the recursive process until we reach the base case of no more time left for pushups.
=end