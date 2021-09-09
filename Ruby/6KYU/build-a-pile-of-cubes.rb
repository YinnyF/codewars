=begin
https://www.codewars.com/kata/5592e3bd57b64d00f3000047


Test.assert_equals(find_nb(4183059834009), 2022)
Test.assert_equals(find_nb(24723578342962), -1)
Test.assert_equals(find_nb(135440716410000), 4824)
Test.assert_equals(find_nb(40539911473216), 3568)
Test.assert_equals(find_nb(10252519345963644753026), -1)

=end

# my solution
def find_nb(m)
  n = 1
  while true do 
    m -= n**3
    return n if m == 0
    return -1 if m < 0
    n += 1
  end
end