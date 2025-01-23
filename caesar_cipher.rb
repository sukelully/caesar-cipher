# This method applies a Caesar cipher to a given string with a specified shift.
# It shifts each letter by the given number of positions in the alphabet.
# Non-alphabetic characters remain unchanged.
#
# @param shift [Integer] the number of positions to shift each letter
# @return [String] the encoded string
def caesar_cipher(shift)
  puts "Enter string to encode: "
  str = gets.chomp
  shift = shift % 26  #Ensures shift is within range of alphabet

  shifted_str = str.chars.map do |char|
    if char.match(/[a-z]/)
      ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    elsif char.match(/[A-Z]/)
      ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    else
      char
    end
  end

  shifted_str.join
end

# Example usage: encode a string with a shift of 7
puts caesar_cipher(7)