=begin
https://www.codewars.com/kata/5b0d67c1cb35dfa10b0022c7
=end

# my solution
# recursion
def squares_needed(grains)
  return 0 if grains < 1
  1 + squares_needed(grains/2)
end

=begin 
squares=1 grains=1 cumulative_grains=1
squares=2 grains=2 cumulative_grains=3
squares=3 grains=4 cumulative_grains=7
squares=4 grains=8 cumulative_grains=15
squares=5 grains=16 cumulative_grains=31

we have the grains, want to find the relationship:
16, 8, 4, 2, 1
the number of iterations we do is equal to the number of squares. 
to get from 16 to 8 we need to divide by 2.
This sets up the recursive process until we reach the base case of no more grains left for squares.

  I don't really understand the question because you need 15 total grains to get 4 squares, but in the test cases it says you squares_needed(grains = 8) = 4??
=end