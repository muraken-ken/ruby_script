# aのn乗を返すような2引数の関数（メソッド）を下記の方法で作って下さい。
# ただしa, nは正整数とします。（0や負の数に関しては考慮しなくても結構です。）
# 課題1. aをn回かけるループ文を使って作って下さい。

# 課題2. 課題1で作った物より高速なものを作って下さい。（計算時間のオーダーがlg(n)となるように）。
# 計算時間のオーダーがlg(n)というのは平たく言えばnに対して計算の手間（例えばループ回数）がおおよそlg(n)回ということです。
# ここではnが8程度ならば凡そ3回、1024程度ならば凡そ10回の手間で計算できる、というように解釈していただければ構いません

require 'benchmark'

def exponentiation_loop(a, n)
  ans = 1
  n.times { ans *= a }
  ans
end

def exponentiation_bitshift(a, n)
  ans = 1
  while n.positive?
    ans *= a if n & 1 == 1
    a *= a
    n >>= 1
  end
  ans
end

# a = 2
# n = 9
# puts exponentiation_loop(a, n)
# puts exponentiation_bitshift(a, n)
# puts a**n

Benchmark.bm 10 do |r|
  a = 2
  n = 500_000
  r.report 'Loop' do
    exponentiation_loop(a, n)
  end
  r.report 'Bit Shift' do
    exponentiation_bitshift(a, n)
  end
  r.report 'Ruby' do
    a**n
  end
end
