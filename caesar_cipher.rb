def caesar_cipher(str, shift)
  shift = shift % 26
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

string = 'What a string!'

puts caesar_cipher(string, 7)