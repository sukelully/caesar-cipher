def caesar_cipher(str, shift)
  # Keep track of case of each letter in string.
  str_case = str.split('').map { |ltr| ltr == ltr.upcase }

  # Create an array holding index values of the shifted characters.
  shift_arr = str.downcase.bytes.map { |i| i + shift - 96 }

  shift_arr = shift_arr.map do |i|
    if i < 1
      i + 122 
    elsif i > 26
      i + 70
    else
      i + 96
    end
  end

  shift_str = shift_arr.pack('c*')

  for i in str_case do
    puts shift_str[i]
  end
  
  shift_str
end

string = 'Az'

p caesar_cipher(string, -1)
