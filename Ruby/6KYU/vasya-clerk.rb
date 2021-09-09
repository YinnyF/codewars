=begin
https://www.codewars.com/kata/555615a77ebc7c2c8a0000b8
=end

# my solution
def tickets(people)
  till = {
    25 => 0, 
    50 => 0, 
    100 => 0
  }
  enough_bills = "YES"
  
  for i in people
    till[i] += 1 # add the $i bill to the till
    if i == 100 && till[25] >= 1 && till[50] >= 1  #start with highest denomiations first
      till[25] -= 1
      till[50] -= 1
    elsif i == 100 && till[25] >= 3
      till[25] -= 3 #take 3 $25 bills from the till
    elsif i == 50 && till[25] >= 1
      till[25] -= 1
    elsif i == 25
      # do nothing
    else
      enough_bills = "NO"
    end
  end
 
  return enough_bills  
end

=begin
create a new hash representing the number of each bill in the till
iterate through each customer and check if we have enough change for their bill
increase the till with each bill they give, and also reduce the till with the change given
we want to change the enough_bills parameter to "NO" if at any point we do not have enough bills to give the correct change
=end