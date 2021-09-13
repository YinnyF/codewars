=begin
https://www.codewars.com/kata/576757b1df89ecf5bd00073b

Additional Test Cases:
  Test.assert_equals(towerBuilder(4), ['   *   ', '  ***  ', ' ***** ', '*******'], "4 floors")
=end

# my solution 13/09/21
def towerBuilder(n_floors)
  tower = []
  
  for floor in 1..n_floors
    tower << " " * (n_floors - floor) + "*" * (2 * floor - 1) + " " * (n_floors - floor)  
  end
  
  return tower
end
