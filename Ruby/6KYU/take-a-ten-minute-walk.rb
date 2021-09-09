=begin
https://www.codewars.com/kata/54da539698b8a2ad76000228
=end

# my solution
def is_valid_walk(walk)
  co_ords = [0, 0]
  
  for i in walk
    if i == "n"
      co_ords[1] += 1
    elsif i == "e"
      co_ords[0] += 1     
    elsif i == "s"
      co_ords[1] -= 1     
    else # i = "w"
      co_ords[0] -= 1 
    end
  end
  return co_ords == [0, 0] && walk.length == 10 ? true : false
end