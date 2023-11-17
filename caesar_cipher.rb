def caesar_cipher(string, shift)
    alphabet = ('a'..'z').to_a
    shifted_alphabet = alphabet.rotate(shift)
    new_string = string.split("")
   
    new_string.each_with_index do |letter, i|
      if letter =~ /[a-z]/i
        equals = alphabet.index(letter.downcase)
        new_string[i] = shifted_alphabet[equals]
      end
    end
   
    new_string.join
   end
   
puts caesar_cipher("What a string!", 5) #=> "Bmfy f xywnsl!"
   