# bubble-sort.rb for the Bubble Sort project of The Odin Project

# Method for Bubble Sorting

# while sorted is false, continue
# get element [n] and compare with next element [n+1]
# if element > next, swap
# if not, continue to next set
# if swaps is false, break

def bubble_sort(array)
  swapped = true
  skip_check = array.length
  while swapped == true
    swapped = false
    array.each_with_index do |num, i|
      break if i == skip_check - 1
      next if array[i + 1].nil? || num <= array[i + 1]

      if num > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    skip_check -= 1
  end

  puts "Sorted: #{array}"
end

puts 'Welcome to the Simple Buble Sort. Please input your list of numbers:'
arr_for_sort = gets.chomp.split(' ')
arr_for_sort.map! { |num| num.to_i }

bubble_sort(arr_for_sort)
