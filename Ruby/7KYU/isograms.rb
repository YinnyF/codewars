=begin
https://www.codewars.com/kata/54ba84be607a92aa900000f1
=end

# my solution
def is_isogram(string)
  isisogram = true
  counter = Hash.new(0)
  
  string.downcase.split('').each {|x| counter[x] += 1}
  
  counter.each { |letter, count| 
    if count > 1
      isisogram = false
    end
  }
  
  return isisogram 
end
