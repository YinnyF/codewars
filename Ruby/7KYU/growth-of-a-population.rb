=begin
https://www.codewars.com/kata/563b662a59afc2b5120000c6
=end

# my solution
def nb_year(p0, percent, aug, p)
  i = 0
  pi = p0
  while pi < p
    i += 1
    pi = (pi * (1 + percent.to_f / 100) + aug).floor
  end 
  return i
end
