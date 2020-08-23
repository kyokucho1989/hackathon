puts '今日はどの項目を何分勉強した？'
# 学習項目入力
puts '学習項目を入力'
learning_detail = gets.chomp
# 学習時間入力
puts '学習時間を入力（分）'
learning_time = gets.chomp.to_i
# 学習項目検索/新規作成


# 学習時間計算
cell_number = (learning_time / 15).floor
cell_pict = ""
cell_number.times do 
  cell_pict = cell_pict + " ■"
end

# 色塗り/表示
puts "学習記録"
learning = [{detail: "Ruby", cell: "■ ■"},{detail: "Rails", cell: "■ ■ ■"},{detail: "Java", cell: "■"}]
learning.each do |l|
  puts <<~TEXT
    #{l[:detail]} #{l[:cell]}
  TEXT
end
#{learning_detail}  #{cell_pict}
