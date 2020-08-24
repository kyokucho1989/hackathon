learning={}
loop do
  puts '今日はどの項目を何分勉強した？（終了する場合はexit）'
  # 学習項目入力
  puts '学習項目を入力'
  learning_detail = gets.chomp


  
  if learning_detail == "exit"
    puts "終了"
    break
  end
  # 学習時間入力
    puts '学習時間を入力（分）'
    learning_time = gets.chomp.to_i

  # 学習項目検索/新規作成

  if learning.has_key?(learning_detail)
    learning[learning_detail] = learning[learning_detail] + learning_time
  else
    learning[learning_detail] = learning_time
  end

  # 学習時間計算
  def disp_square(learning_time)
    cell_number = (learning_time / 15).floor
    cell_pict = ""
    cell_number.times do 
      cell_pict = cell_pict + " ■"
    end
    cell_pict
  end

  # 色塗り/表示
  puts "学習記録"
  array_h = learning.to_a
  p array_h
  array_h.each do |l|
    puts <<~TEXT
      #{l[0]} #{disp_square(l[1])} (#{l[1]}分)
    TEXT
  end
  puts "press enter"
  teisi = gets

end