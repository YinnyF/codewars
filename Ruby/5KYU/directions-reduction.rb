=begin
https://www.codewars.com/kata/550f22f4d758534c1100025a
=end

# my solution
def dirReduc(arr)
  path = []  #the resulting path
  
  for i in arr
    path << i
    if path[-1]=="NORTH" && path[-2]=="SOUTH" || path[-1]=="SOUTH" && path[-2]=="NORTH" || path[-1]=="EAST" && path[-2]=="WEST" || path[-1]=="WEST" && path[-2]=="EAST"  
      path.pop 
      path.pop
    end
  end
  
  return path 
  
end
