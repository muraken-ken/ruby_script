# 入力されたデータをエンコード／デコードするプログラムを作成せよ。 
# データの入出力方法は自由とする。

require 'base64'

def base64_table
  base64_key = [*0..63].map { |s| format('%06b', s) }
  base64_value = [*'A'..'Z', *'a'..'z', *'0'..'9', '+', '/']
  base64_array = [base64_key, base64_value].transpose
  Hash[*base64_array.flatten]
end

def str_base64(str)
  array_hex = str.codepoints.map { |s| format('0x%02x', s) }
  bin = array_hex.map { |s| format('%08b', s) }.join
  array_bin_6bit = bin.scan(/[01]{1,6}/).map { |s| s.ljust(6, '0') }
  array_base64 = array_bin_6bit.map { |s| s.gsub(/[01]{6}/, base64_table) }.join
  array_base64.scan(%r([A-Za-z0-9+/]{1,4})).map { |s| s.ljust(4, '=') }.join
end

def base64_str(base64)
  base64.gsub!(/=/, '')
  array_base64 = base64.split('')
  array_bin_6bit = array_base64.map { |s| s.gsub(%r([A-Za-z0-9+/]{1}), base64_table.invert) }.join
  array_bin = array_bin_6bit.scan(/[01]{1,8}/)
  array_bin.pop if array_bin.last.length < 6
  array_bin.map! { |s| "0b#{s}" }
  array_hex = array_bin.map { |s| format('0x%02x', s) }
  array_hex.map { |s| s.hex.chr }.join
end

word = 'I Love You!'
puts str_base64(word)
word = str_base64(word)
puts base64_str(word)

word = 'I Love You!'
puts Base64.encode64(word)
word = Base64.encode64(word)
puts Base64.decode64(word)
