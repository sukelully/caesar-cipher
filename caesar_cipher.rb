def caesar_cipher(str, shift)
  # alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')
  shift_arr = str.bytes.map {|i| i += shift}
end

string = 'abc'

p caesar_cipher(string, 3)