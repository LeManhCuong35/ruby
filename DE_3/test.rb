arr = Array.new(5,0)

new_arr = Proc.new do |arr|
  arr = arr.map do |item|
    item = item*item unless [6,7].include?(item)
    item
  end
  puts "your new array is #{arr}"
end

5.times do |i|
  puts "enter your item at index #{i}: "
  arr[i] = gets.chomp.to_i
end

new_arr.call(arr)
