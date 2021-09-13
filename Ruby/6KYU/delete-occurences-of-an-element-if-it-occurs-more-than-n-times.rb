=begin
https://www.codewars.com/kata/554ca54ffa7d91b236000023
=end

# my solution 13/09/21
def delete_nth(order,max_e)
  n_count = {}
  order.map.uniq { |number| n_count[number] = 0 }
  result = []
  
  order.map do |number| 
    if  n_count[number] < max_e
      result << number
      n_count[number] += 1
    end
  end
  
  result
end

# notes
