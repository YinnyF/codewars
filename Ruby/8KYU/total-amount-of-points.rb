=begin
https://www.codewars.com/kata/5bb904724c47249b10000131
=end

# my solution
def points(games)
  points = 0
  for i in games
    scores = i.split(":").map{|x| x.to_i} # an array of integer scores [1, 0]
    
    #assign points based on the outcome of the match
    if scores[0] - scores[1] > 0
        points += 3
    elsif scores[0] - scores[1] < 0
        points += 0
    else
        points += 1
    end
   
  end
  return points 
end