# index will contain game loop
# player class (contains player instance, which is which, counts how many wins and loss)
# tic tac toe probably nested array
# players choose position (TL, TC, TR, ML, MC, MR, BL, BC, BR)

# Player class for the name and scores of each player (only 2)
class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name.to_s
    @score = 0
  end

  def to_s
    "This is Player #{name}!"
  end
end

def game_board(board)
  index = 0
  board.each do |left, center, right|
    puts "#{left} | #{center} | #{right}"
    puts '---------' if index <= 1
    index += 1
  end
end

def game_turn(who_turn, turn_num, board)
  return game_board(board) if turn_num.zero?

  mark = turn_num.even? ? 'O' : 'X'
  puts "\n#{who_turn}, choose where to play:"
  case gets.chomp.to_s.downcase
  when 'tl' then board[0][0] = mark if board[0][0] == ' '
  when 'tc' then board[0][1] = mark if board[0][1] == ' '
  when 'tr' then board[0][2] = mark if board[0][2] == ' '
  when 'ml' then board[1][0] = mark if board[1][0] == ' '
  when 'mc' then board[1][1] = mark if board[1][1] == ' '
  when 'mr' then board[1][2] = mark if board[1][2] == ' '
  when 'bl' then board[2][0] = mark if board[2][0] == ' '
  when 'bc' then board[2][1] = mark if board[2][1] == ' '
  when 'br' then board[2][2] = mark if board[2][2] == ' '
  end

  game_board(board)
end

def check_board(board)
  # victory conditions: must be 3 in a row (top, mid, bottom, left, center, right, tl->br, bl->tr)
  x = Array.new(3)
  o = Array.new(3)
  2.times do
    board.each_with_index do |content, r_index|
      board.each_with_index do |content, c_index|
        x.push(board[r_index][c_index]) if board[content] == 'X'
        o.push(board[r_index][c_index]) if board[content] == 'O'
      end
    end
  end
  puts x, o
end

game_loop = true
board = Array.new(3) { Array.new(3, ' ') }
sample_board = [%w[TL TC TR], %w[ML MC MR], %w[BL BC BR]]

puts "Let's play Tic-Tac-Toe."
puts 'Give a name for Player 1: '
p1 = Player.new(gets.chomp.to_s)
puts 'Give a name for Player 2: '
p2 = Player.new(gets.chomp.to_s)

puts 'Who goes first (P1, P2, Random): '
who_turn = gets.chomp.downcase
while who_turn != 'p1' && who_turn != 'p2' && who_turn != 'random'
  puts 'Choose from the choices who will go first (P1, P2, Random)'
  who_turn = gets.chomp.downcase
end
who_turn = rand > 0.5 ? 'p1' : 'p2' if who_turn == 'random'

puts "\nWe have #{p1.name} vs #{p2.name}!\n"
puts "\nTo choose a position, follow the example below:"
game_board(sample_board)

puts "\n#{p1.name} goes first!" if who_turn == 'p1'
puts "\n#{p2.name} goes first!" if who_turn == 'p2'

who_turn = who_turn == 'p1' ? p1.name : p2.name

turn_num = 0
game_turn(who_turn, turn_num, board)

while game_loop == true
  turn_num += 1
  puts "Round #{turn_num}"
  game_turn(who_turn, turn_num, board)
  # check_board(board)
  # turn method (turn), returns board (turns are counted, turn shifts; 8 turns game over)
  # victory conditions check (if met, game_loop = false) (make winner variable)
  who_turn == p1.name ? p2.name : p1.name
  game_loop = false if turn_num == 8
  winner = 'No One'
end

puts "\nCongratulations #{winner}! You won!"
# give option to play again in the future
