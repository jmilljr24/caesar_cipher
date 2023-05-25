def cipher(user_input, shift_factor)
  # char_array = user_input.chars
  # asc = char_array.map{ |char| char.ord}
  asc_array = []
  user_input.downcase.each_char do |char|
    if char.ord == 32
      asc_array << char.ord
    elsif char.ord < 91
      shift = char.ord + shift_factor
      shift -= 26 if shift > 90
      asc_array << shift
    else
      shift = char.ord + shift_factor
      shift -= 26 if shift > 122
      asc_array << shift

    end
  end
  asc_array.pack('c*')
end

# print 'Write your message to encrypt: '
# string = gets.chomp
# print 'Write your encryption factor number: '
# factor = gets.chomp.to_i

# puts cipher(string, factor)
