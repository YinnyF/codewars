=begin
https://www.codewars.com/kata/552c028c030765286c00007d
=end

# my solution
def iq_test(numbers)
  odd_count = 0
  even_count = 0
  
  numbers.split(/\s/).each {|x| x.to_i % 2 == 0 ? even_count += 1 : odd_count += 1}
  
  i = 1
  if odd_count > even_count  #pick an even number
    numbers.split(/\s/).each {|x| x.to_i.even? ? (return i) : i += 1}
  else                    #pick an odd number
    numbers.split(/\s/).each {|x| x.to_i.odd? ? (return i) : i += 1}
  end

end
