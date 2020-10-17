require 'pry'
items = {"コーラ":120, "コーヒー":100, "ジュース":150}

puts <<-text
オカネヲ イレテ クダサイ
text
input_money = gets.chomp.to_i

puts <<-text
チュウモン ドウゾ
text

items.keys.each_with_index do |item_name,i|
  item_price = items[item_name]
  puts "No.#{i}  #{item_name}: #{item_price}円"
  # binding.pry
end

order_num = gets.chomp.to_i
order_item_name = items.keys[order_num]
order_item_price = items.values[order_num]

change_money = input_money - order_item_price
if change_money >= 0
  puts "オツリハ #{change_money}円デス"
else
  puts "オカネガタリマセン"
end

