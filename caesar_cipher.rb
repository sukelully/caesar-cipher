def caesar_cipher(str, shift)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
  index_arr = []

  str.split('').each do |letter|
    index_arr << alphabet.index(letter)
  end

  shift_index_arr = index_arr.map do |i|
    i += shift
  end
  
  shift_index_arr
end

string = 'abc'

p caesar_cipher(string, 3)