# caesar_cipher.rb from The Odin Project

# First, I need to take two inputs: the message (message) and the shift (shift) (the shift is always to the right)
# Second, the messages runs through a method (takes shift as argument)
#    where each individual letter shifts depending on the argument
#     Challenge: letters must wrap around from z back to a
# Third, print out the new shifted message (cipher)

# encoding: utf-8

def caesar_cipher(message, shift)
  cipher = message.map do |letter| # keep original message if needed
    letter = letter.ord

    case letter
    when 97..122
      letter += shift
      letter -= 26 if letter > 122
      letter += 26 if letter < 97 # in case of negative shift
    when 65..90
      letter += shift
      letter -= 26 if letter > 90
      letter += 26 if letter < 65
    end

    letter.chr(Encoding::UTF_8)
  end

  cipher.join
end

puts 'Message?'
message = gets.chomp.chars

puts 'Shift?'
shift = gets.chomp.to_i

p caesar_cipher(message, shift)
