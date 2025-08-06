# caesar-de-cipher.rb for the Caeser Cipher project from The Odin Project
#
# This is a personal extension of the project. Of course if you have a cipher, you should have a decipher.
# Since I'm not trying to break the cipher, the name is de-cipher, just to reverse the cipher made.
#
# First, accept two inputs: the encrypted message and the cipher shift (cipher and shift respectively)
# Second, the cipher runs through a method (takes cipher and shift as arguments) and unshifts the cipher.
# Third, prints the output (og_message)

# encoding: utf-8

def de_cipher(cipher, shift)
  og_message = cipher.map! do |letter| # keeps ciphered version if needed
    letter = letter.ord

    case letter
    when 97..122
      letter -= shift
      letter += 26 if letter < 97
      letter -= 26 if letter > 122 # in case of negative shift
    when 65..90
      letter -= shift
      letter += 26 if letter < 65
      letter -= 26 if letter > 90
    end

    letter.chr(Encoding::UTF_8)
  end

  og_message.join
end

puts "What's the message?"
cipher = gets.chomp.split('')

puts 'How many?'
shift = gets.chomp.to_i

p de_cipher(cipher, shift)
