# stock-picker.rb for the Stock Picker project from The Odin Project
#
# First, receive input of an array of numbers (stock).
# Second, pass through a method that gets the best day to buy and sell stock.
# Third, output the two best days as an array. 0 is buy day, 1 is sell day.
# Note: You can only sell after buying the stock.

def stock_picker(stock_price)
  best_profit = 0
  lowest_price = stock_price[0]
  best_days = [0, 0]
  low_day = 0

  stock_price.each_with_index do |_price, day|
    current_profit = stock_price[day] - lowest_price

    if current_profit > best_profit
      best_days[1] = day
      best_profit = current_profit
      best_days[0] = low_day
    end

    if stock_price[day] < lowest_price
      lowest_price = stock_price[day]
      low_day = day
    end
  end
  puts(stock_price.each_with_index.map { |price, day| "Day: #{day} Price: #{price}" })
  puts "Buy @ Day [#{best_days[0]}] ($#{stock_price[best_days[0]]}), Sell @ Day [#{best_days[1]}] ($#{stock_price[best_days[1]]})."
  puts "Profit: $#{best_profit}"
end

puts 'Welcome to the Stock Picker. Please input the stock prices that will appear for the next few days:'
stock_price = gets.chomp.split(' ')
stock_price.map! { |price| price.to_i }

stock_picker(stock_price)
