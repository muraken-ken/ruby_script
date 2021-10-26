# h x w からなるマップが与えられる
# マップの各マスは海(.)または陸(#)からなる
# 辺で (左右上下に) 連結した陸を一つの島と数える
# 入力は一行目に2つの整数 h w、2行目から続くh行に各行長さwの文字列としてマップが与えられる
# 入力例
# 5 3
# ##.
# #.#
# #.#
# .##
# #..
# 出力例
# 3

islands = <<~MAP
  5 4
  ##..
  #.##
  #.##
  .###
  #...
MAP

w = islands.index("\n")                   #1行目の文字数
hw = islands.slice!(0, w + 1).split(' ')  #1行目の切り出し、hwの数値切り出し
h = hw[0].to_i                            #行数
w = hw[1].to_i                            #行の文字数
islands = islands.split(/\n/)

def delete_island(i, j, islands, h, w)
  islands[i][j] = '0'
  [[0, 1], [1, 0], [0, -1], [-1, 0]].each do |x, y|
    next if !(0..w).include?(i + x) || !(0..h).include?(j + y)

    delete_island(i + x, j + y, islands, h, w) if islands[i + x][j + y] == '#'
  end
end

ans = 0
(w + 1).times do |i|
  (h + 1).times do |j|
    if islands[i][j] == '#'
      ans += 1
      delete_island(i, j, islands, h, w)
    end
  end
end

puts ans
