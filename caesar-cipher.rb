# caesar-cipher.rb from The Odin Project

# First, I need to take two inputs: the message (message) and the shift (shift) (the shift is always to the left)
# Second, the messages runs through a method (takes shift as argument) where each individual letter shifts depending on the argument
#     Challenge: letters must wrap around from z back to a
# Third, print out the new shifted message (cipher)

# encoding: utf-8

def caesar_cipher (message, shift)
    cipher = Array.new
    message.each do |letter|
        cipher.push(letter.ord)
    end

    # p cipher

    cipher.map! do |letter|
      if letter == 32
          letter = ''
          next
      end
      letter = letter + shift
      letter.chr(Encoding::UTF_8)
    end

    # p cipher

    cipher.map! {|letter| letter == nil ? " " : letter}
    
    cipher.join
end

puts "Message?"
message = gets.chomp.split("")
# message = "hello there"
# message = message.split("")
puts "Shift?"
shift = gets.chomp.to_i
# shift = 5

# p message
# p shift

p caesar_cipher(message, shift)