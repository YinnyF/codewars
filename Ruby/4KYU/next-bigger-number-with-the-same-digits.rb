=begin
https://www.codewars.com/kata/55983863da40caa2c900004e

TEST CASES
Test.assert_equals(next_bigger(12),21)
Test.assert_equals(next_bigger(513),531)
Test.assert_equals(next_bigger(2017),2071)
Test.assert_equals(next_bigger(414),441)
Test.assert_equals(next_bigger(144),414)
Test.assert_equals(next_bigger(9),-1)
Test.assert_equals(next_bigger(111),-1)
Test.assert_equals(next_bigger(531),-1)
Test.assert_equals(next_bigger(1234567890),1234567908)
Test.assert_equals(next_bigger(59884848459853),59884848483559) 
Test.assert_equals(next_bigger(277551),512577)
Test.assert_equals(next_bigger(111112222222333444445556667777788888899999999999),111112222222333444445556667777788888989999999999)
Test.assert_equals(next_bigger(2543543330),2544033335)
Test.assert_equals(next_bigger(1111222222233333333334455777889999999999),1111222222233333333334455777898999999999)
=end

# my solution
def next_bigger(n) # 2017
  arr = n.to_s.split('').map {|x| x.to_i} # arr => [2, 0, 1, 7]
  
  hand = [arr.pop()]
  i = 0
  max_arr_index = arr.length
  
  while i < max_arr_index
    hand << arr.pop()
    max_hand_index = hand.length-1 
    j = 0 
    while j < max_hand_index
      if hand[j] > hand[max_hand_index]
        arr << hand[j]
        hand.delete_at(j)
        hand.sort!
        arr += hand
        return arr.join('').to_i
      end
      j += 1
    end
    i += 1
  end  
  
  return -1
end