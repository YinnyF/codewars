=begin
https://www.codewars.com/kata/53dbd5315a3c69eed20002dd
=end

# my solution
def filter_list(l)
  l = l.select { |x| x.is_a?(Integer) }
end