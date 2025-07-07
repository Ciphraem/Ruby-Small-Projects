# caesar-de-cipher.rb for the Caeser Cipher project from The Odin Project
# This is a personal extension of the project. Of course if you have a cipher, you should have a decipher.
# Since I'm not trying to break the cipher, the name is de-cipher, just to reverse the cipher made.
# 
# First, accept two inputs: the encrypted message and the cipher shift (cipher and shift respectively)
# Second, the cipher runs through a method (takes cipher and shift as arguments) and unshifts the cipher.
# Third, prints the output (og_message)

# encoding: utf-8

def de_cipher (cipher, shift)
    og_message = Array.new
    
    cipher.each do |letter|
        og_message.push(letter.ord)
    end

    # p og_message

    og_message.map! do |letter|
      if letter == 32
          letter = ''
          next
      end

      if letter >= 65 && letter <=90
          letter = letter - shift
          if letter < 65
                letter = letter+26
          end
      elsif letter >= 97 && letter <= 122
          letter = letter - shift
          if letter < 97
              letter = letter+26
          end   
      end

      letter.chr(Encoding::UTF_8)
    end

    # p cipher

    og_message.map! {|letter| letter == nil ? " " : letter}
    
    og_message.join
end

puts "What's the message?"
cipher = gets.chomp.split("")
# message = "hello there"
# message = message.split("")
puts "How many?"
shift = gets.chomp.to_i
# shift = 5

# p message
# p shift

p de_cipher(cipher, shift)