#配列の先頭はそのままに、先頭以外の要素をすべて0に置き換える。

require 'readline'

def input_array
  while input_array = Readline.readline('複数桁の数字を入力してください> ').split('').map(&:to_i)
    return input_array if input_array.count >= 2
  end
end

def array_transrate(ary)
  first_ary = ary[0]
  ary.fill(0)
  ary[0] = first_ary
  # output(ary)
  ary
end

def output(ary)
  puts ary.join(' ')
end

# array_transrate(input_array)
