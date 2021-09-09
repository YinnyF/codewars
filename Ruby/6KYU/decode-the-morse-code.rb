=begin
https://www.codewars.com/kata/54b724efac3d5402db00065e
=end

# my solution
def decodeMorse(morseCode)
  array = morseCode.lstrip.rstrip.gsub(/\s{2}/, ' space').split(' ')
  decoded_string = ""
  
  for i in array
    if i == "space"
      decoded_string << " " 
    else
      decoded_string << MORSE_CODE[i.to_s]
    end
  end
  return decoded_string
end