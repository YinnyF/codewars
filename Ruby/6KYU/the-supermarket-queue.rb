=begin
https://www.codewars.com/kata/57b06f90e298a7b53d000a86
=end

# my solution
def queue_time(customers, n) #customers = [10, 2, 3, 3]
  queue = Array.new(n, 0)
  
  for i in 0..(n-1)
    queue[i] += customers.shift.to_i
  end
  
  for j in 1..customers.length
    queue[queue.index(queue.min)] += customers.shift
  end

  time = queue.max
  return time
    
end
