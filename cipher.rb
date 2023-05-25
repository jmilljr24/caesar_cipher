def cipher(user_input, shift_factor)
     #char_array = user_input.chars
     #asc = char_array.map{ |char| char.ord}
     asc_array = []
     user_input.each_char do |char|
        if char.ord == 32
            asc_array << char.ord
        else
          if char.ord < 91
            shift = char.ord + shift_factor
            if shift > 90 
                shift -= 26
            end
            asc_array << shift
          else
            shift = char.ord + shift_factor
            if shift > 122
                shift -= 26
            end
          asc_array << shift
        end

       end
     end
     asc_array.pack('c*')
end


print "Write your message to encrypt: "
string = gets.chomp
print "Write your encryption factor: "
factor = gets.chomp.to_i

puts cipher(string, factor)