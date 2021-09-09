=begin
https://www.codewars.com/kata/554e4a2f232cdd87d9000038
=end

# my solution
def DNA_strand(dna)
  key = {'A' => 'T', 'T' => 'A', 'C' => 'G', 'G' => 'C'}
  dna.split('').map {|i| key[i]}.join('')
end