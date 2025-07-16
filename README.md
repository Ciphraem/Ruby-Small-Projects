# Ruby-Small-Projects from The Odin Project
## Caesar-Cipher in Ruby

This is the first project for the Ruby Course on The Odin Project.

From the Couree Material:
Implement a Caesar cipher that takes in a string and the shift factor and then outputs the modified string using a right shift:

  > caesar_cipher("What a string!", 5)  
  => "Bmfy f xywnsl!"

### HOW TO USE

#### caesar-cipher.rb
You'll be prompted with two inputs: the message you want to cipher and the cipher shift. The output is the ciphered message.

  > Message?  
  > ***What a string!***  
  > Shift?  
  > ***5***  
  > "Bmfy f xywnsl!"  

#### caesasr-de-cipher.rb (personal extension)
You'll be prompted with two inputs: the ciphered message you had and the cipher shift (which you should know). The output is the original message.

  > What's the message?  
  > ***Bmfy f xywnsl!***  
  > How many?  
  > ***5***  
  > "What a string!"  

  
## Sub-Strings

This is the second project for the Ruby Course on The Odin Project.

From the project page:

Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]  
   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
   substrings("below", dictionary)  
   => { "below" => 1, "low" => 1 }

Next, make sure your method can handle multiple words:
  > substrings("Howdy partner, sit down! How's it going?", dictionary)  
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }


## Stock-Picker

This is the third project for the Ruby Course on The Odin Project.

From the project page:

Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12

Quick Tips: (1) You need to buy before you can sell, and (2) pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.


## Bubble-Sort

This is the fourth short ruby project for the Ruby Course on The Odin Project

From the project page:

Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).