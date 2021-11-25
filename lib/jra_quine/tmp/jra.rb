# 36 x 80
aa = <<EOM
00000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000111111111111111111111110000000000000000000000000000
00000000000000000000000111111111111111111111111111111111100000000000000000000000
00000000000000000000111111111111111111111111111111111111111110000000000000000000
00000000000000000111111111111111100000000000000111111111111111110000000000000000
00000000000000111111111111000000000000000000000000000011111111111100000000000000
00000000000011111111110000000000000000000000000000011000001111111111000000000000
00000000001111111110000000000000000000000000000111110000000001111111110000000000
00000000011111111100000000000000000000000011111111100000000000011111111100000000
00000001111111110000000000000000000001111111111111100000000000000111111110000000
00000011111111000000000000000000111111111111111111000000000000000001111111100000
00000111111100000000000000001111111111111111111000000000000000000000111111110000
00001111111100000000000111111111111111111110000000000000000000000000011111110000
00001111110000000001111111111111111111110000000000001100000000000000001111111000
00011111110000111111111111111111110000000000000011111111100000000000000111111000
00011111100011111111111111111000000000000000011111111111111100000000000111111100
00111111100011111111111110000000000000000000000011111111111111000000000011111100
00111111100001111111000000000000000000000000000000011111111111111000000011111100
00111111100001111000000000000000000000000000000000000011111111111111000011111100
00111111100000111111111111111111111111111000000000000000111111111111111011111100
00111111100000011111111111111111111111111110000000000000000111111111111111111100
00011111110000011111111111111111111111111111100000000000000000111111111111111100
00011111110000000000000000000000111111111111110000000000000000000111111111111000
00001111111000000000000000000000000011111111111100000000000000000000111111111000
00000111111100000000000000000000000000111111111110000000000000000000001111110000
00000111111110000000000000000000000000001111111111100000000000000000000001100000
00000011111111000000000000000000000000000111111111110000000000000000000000000000
00000000111111110000000000000000000000000001111111111000000000000000000000000000
00000000011111111100000000000000000000000000111111111110000000000000000000000000
00000000000111111111100000000000000000000000011111111111000000000000000000000000
00000000000001111111111100000000000000000000001111111111110000000000000000000000
00000000000000011111111111111000000000000000000011111111111000000000000000000000
00000000000000000011111111111111111100000000011111111111111100000000000000000000
00000000000000000000011111111111111111111111111111111111110000000000000000000000
00000000000000000000000000011111111111111111111111111000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000
EOM

bits = aa.gsub("\n", '').reverse.to_i(2)
puts bits

0.upto(36 * 80 - 1) do |i|
  print bits[i] == 1 ? 1 : ' ';
  print "\n" if i % 80 == 79
end

puts bits.to_s.size #=> 835
puts aa.count('1')  #=> 1079

bin = [Marshal.dump(bits)].pack('m').gsub("\n", '')
puts bin
puts bin.size #=> 472

$s = 'A' * 700 + '#'

b = 'BAhsKwGuAAAAAAAAAAAAAAAAAOD//w8AAAAAAID/////AQAAAADw/////x8AAAAA/v8BgP//AAAAwP8DAADA/wMAAPA/AAAAGPwPAAD8BwAAgA/gPwAA/gMAAPwHgP8AgP8AAOD/BwD+AcA/AAD//wMA+AfgDwDw/38AAPAP8A+A//8HAADgD/AD+P//ADAAwB/4w///AwD/AYAf+PH/HwDg/w+AP/zx/wEAAP8/AD/84Q8AAAD4/wE//OEBAAAAwP8PP/zB////AQD/fz/8gf///wcA+P8/+IP///8fAMD/P/gDAAD/PwAA/h/wBwAA8P8AAPAf4A8AAMD/AQDAD+AfAAAA/wcAAAbAPwAAAP4PAAAAAP8AAAD4HwAAAAD+AwAA8H8AAAAA+B8AAOD/AAAAAOD/AADA/wMAAACA/x8AAP8HAAAAAPz/D+D/DwAAAADg/////wMAAAAAAPj//x8A'

n = Marshal.load(b.unpack('m')[0])
e = "eval$s=%w" << 39 << ($s * 3)
o = ''
j = -1
0.upto(36 * 80 - 1) do |i|
  o << ((n[i] == 1) ? e[j += 1] : 32 )
  o << ((i % 80 == 79) ? 10 : '' )
end

o[-10, 6] = '' << 39 << '.join'
puts(o)
