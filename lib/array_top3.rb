# 配列に負でない整数が格納されている。これらの整数の中から大きい順に3つの数字とその添字を出力せよ。
# 入力例
# [12, 6, 8, 3, 10, 1, 0, 9]
# 出力例
# 0 -> 12
# 4 -> 10
# 7 -> 9

array = [12, 6, 8, 3, 10, 1, 0, 9]
n = 3

def array_top(array, n)
  array.max(n).each { |ary| puts "#{array.index(ary)} -> #{ary}" }
end

array_top(array, n)

# max1, max2, max3 = array.max(3)

# index1 = array.index(max1)
# index2 = array.index(max2)
# index3 = array.index(max3)

# p "#{index1} -> #{max1}"
# p "#{index2} -> #{max2}"
# p "#{index3} -> #{max3}"
