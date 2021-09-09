=begin
https://www.codewars.com/kata/5526fc09a1bbd946250002dc
=end

# my solution
def find_outlier(integers)
  odd_count = 0
  even_count = 0
  
  for i in integers
    i % 2 == 0 ? even_count += 1 : odd_count += 1
  end
  
  odd_count > even_count ? integers.select{|x| x % 2 == 0}[0] : integers.select{|x| x % 2 != 0}[0]
end