# 線形合同法を用いて0<=x<1の範囲の乱数を発生させるプログラムを作成せよ。
# M＝65536(=2^16),A=997,B=1,Xの初期値を12345として100個の乱数を発生させ,その値と平均を出力しなさい。

def lcgs(x, a, b, m)
  (A * x + B) % M
end

M = 65_536
A = 997
B = 1.0
x = 12_345
total = 0
n = 100

n.times do
  x = lcgs(x, A, B, M)
  random_number = x / M
  total += random_number
  puts format('%.4f', random_number.round(4))
end
average = total / n
puts "平均値は、#{format('%.4f', average.round(4))}です。"
