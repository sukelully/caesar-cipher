def caesar_cipher(str, shift)
  # Keep track of case of each letter in string.
  str_case = str.split('').map { |ltr| ltr == ltr.upcase }

  # Create an array holding index values of the shifted characters.
  shift_arr = str.downcase.bytes.map { |i| i + shift - 96 }

  # Adjust character byte value if lower than 1 or higher than 26.
  shift_arr = shift_arr.map do |i|
    if i < 1
      i + 122 
    elsif i > 26
      i + 70
    elsif i == "\n"
      next
    else
      i + 96
    end
  end

  # Convert back to character.
  shift_str = shift_arr.pack('c*')

  # 
  str_case.each_with_index do |is_upper, index|
    if is_upper
      shift_str[index] = shift_str[index].upcase
    end
  end

  shift_str
end

string = 'What a string!'

p caesar_cipher(string, 5)
