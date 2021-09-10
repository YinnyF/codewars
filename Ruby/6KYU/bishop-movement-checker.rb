=begin
https://www.codewars.com/kata/6135e4f40cffda0007ce356b

Additional Test Cases:
    expect(bishop("a1", "b4", 0)).to eq(false)
    expect(bishop("a1", "b4", 1)).to eq(false)
=end

# my solution 10/09/21
def bishop (start_pos, end_pos, num_moves)
  # key to convert into integer co-ordinates
  key = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8}

  start_pos = [key[start_pos[0]], start_pos[1].to_i] # [0, 0]
  end_pos = [key[end_pos[0]], end_pos[1].to_i] # [2, 4]

  # impossible case
  return false if ((start_pos[0] - end_pos[0]) % 2 == 0) != ((start_pos[1] - end_pos[1]) % 2 == 0)

  # move limits issue
  if num_moves > 1
    return true
  elsif num_moves == 1
    return (start_pos[0] - end_pos[0]).abs == (start_pos[1] - end_pos[1]).abs
  else
    return start_pos == end_pos
  end
end  

# notes
=begin
The input are given as strings, it may be easier to convert them to integer co-ordinates in an array.

Impossible case:
Looking at the board we know that anything with the opposite #/_ the bishop is unable to move there

Logic:
If the "sign" is the same, the bishop will always be able to move there, however there is a move limit.
The max number of moves needed to get somewhere is 2.

If num_moves is 0 or 1 then we need to verify that it is possible.

num_moves == 0 <==> it's the same square.

num_moves == 1 <==> it's on the same diagonal.

How do we work out if it's on the same diagonal? |dx|==|dy|
=end

# Refactored solution 2
def bishop (start_pos, end_pos, num_moves)
  key = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8}
  
  start_pos = [key[start_pos[0]], start_pos[1].to_i]
  end_pos = [key[end_pos[0]], end_pos[1].to_i]

  return false if ((start_pos[0] - end_pos[0]) % 2) != ((start_pos[1] - end_pos[1]) % 2)
  
  if num_moves > 1
    return true
  elsif num_moves == 1
    return (start_pos[0] - end_pos[0]).abs == (start_pos[1] - end_pos[1]).abs
  else
    return start_pos == end_pos
  end
end
