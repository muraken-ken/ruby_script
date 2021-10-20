# 年と月を入力してカレンダーを出力する。 画面フォーマットはCUI,GUI,WEB等自由とする

require 'date'
require 'readline'

def input_year
  while input_year = Readline.readline('西暦を入力してください。> ').to_i
    return input_year if input_year.positive?

    puts '西暦を入れ直してください'
  end
end

def input_month
  while input_month = Readline.readline('月を入力してください。> ').to_i
    return input_month if input_month >= 1 && input_month <= 12

    puts '月を入れ直してください'
  end
end

# 年月の取得
year = input_year
month = input_month

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
