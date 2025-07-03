# caesar-cipher.rb from The Odin Project

# First, I need to take two inputs: the message (message) and the shift (shift) (the shift is always to the left)
# Second, the messages runs through a method (takes shift as argument) where each individual letter shifts depending on the argument
#     Challenge: letters must wrap around from z back to a
# Third, print out the new shifted message (cipher)

puts "Message?"
message = gets.chomp.split("")
puts "Shift?"
shift = gets.chomp

p message
p shift

# def caesar_cipher (message, shift)
#     mes
# end