# 年と月を入力してカレンダーを出力する。 画面フォーマットはCUI,GUI,WEB等自由とする

require 'date'

# 年月の取得
year = Date.today.year
month = Date.today.month

# 最終日と1日目の曜日の取得
first_of_month = Date.new(year, month, 1)
end_of_month = Date.new(year, month, -1)
last_day = end_of_month.day
first_day_of_week = first_of_month.wday

# 日付の並び、フォーマットの整形
days = (1..last_day).map { |d| d.to_s.rjust(2) }
days = Array.new(first_day_of_week, '  ').push(days).flatten.each_slice(7)

# Calender表示
puts '----- Calender -----'
puts "#{year}年 #{month}月".center(20)
puts '-' * 20
puts 'Su Mo Tu We Th Fr Sa'
days.each do |week|
  puts week.join(' ')
end
