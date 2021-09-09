=begin
https://www.codewars.com/kata/55f2b110f61eb01779000053
=end

# my solution
def get_sum(a,b)
  ([a,b].min..[a,b].max).to_a.inject(:+)
end
