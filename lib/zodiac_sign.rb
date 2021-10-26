# 月日から星座を求める

require 'date'
require 'readline'

ZODIACS = %w[やぎ座 みずがめ座 うお座 おひつじ座 おうし座 ふたご座 かに座 しし座 おとめ座 てんびん座 さそり座 いて座].freeze
DAYS = [20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22].freeze

def input_month
  while input_month = Readline.readline('生まれた月を入力してください> ').to_i
    return input_month if input_month.between?(1, 12)
  end
end

def input_day
  while input_day = Readline.readline('生まれた日を入力してください> ').to_i
    return input_day if input_day.between?(1, 31)
  end
end

def select_zodiac(month, day)
  month_index = if month == 12 && day >= DAYS[month - 1]
                  0
                elsif day < DAYS[month - 1]
                  month - 1
                else
                  month
                end
  ZODIACS[month_index]
end

puts "あなたの星座は「#{select_zodiac(input_month, input_day)}」です。"
