# 西暦から干支（十干／十二支）を求める

require 'readline'

def input_year
  while input_year = Readline.readline('西暦（年）を入力してください> ').to_i
    return input_year if input_year.positive?
  end
end

def eto(y)
  jikkan = %w[庚 辛 壬 癸 甲 乙 丙 丁 戊 己]
  jyunishi = %w[申 酉 戌 亥 子 丑 寅 卯 辰 巳 午 未]
  a = y % 10
  b = y % 12
  puts "#{y}年は、#{jikkan[a]}#{jyunishi[b]}です。"
end

eto(input_year)
