=begin
https://www.codewars.com/kata/56a5d994ac971f1ac500003e
=end

# my solution 10/09/21
def longest_consec(strarr, k)
    return "" if strarr.length == 0 || k > strarr.length || k <= 0
    start_point = 0
    max_string = ""
    
    while start_point < (strarr.length - k + 1)
      if strarr[start_point, k].join("").length > max_string.length
        max_string = strarr[start_point, k].join("")
      end
      
      start_point += 1
    end
    
    return max_string
end

# notes
  