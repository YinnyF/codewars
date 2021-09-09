=begin
https://www.codewars.com/kata/54edbc7200b811e956000556
=end

# my solution
def countSheeps array
  array.select{|x| x == true}.length
end