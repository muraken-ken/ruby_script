# 連立方程式を解くプログラム
# ガウス消去法

matrix = [
  [ 1, -1,  1, -1,  1, 1],
  [12, -6,  2,  0,  0, 0],
  [ 1,  1,  1,  1,  1, 8],
  [12,  6,  2,  0,  0, 0],
  [ 4,  3,  2,  1,  0, 1],
]

def gaussian_elimination(matrix)
  # 変数の数
  num_index = matrix.size

  num_index.times do |i|
    # 行入れ替え
    max = 0
    s = i
    i.upto(num_index - 1) do |j|
      next unless matrix[j][i].abs > max

      max = matrix[j][i].abs
      s = j
    end
    if max.zero?
      puts '解けない！'
      exit
    end
    (num_index + 1).times do |j|
      dummy = matrix[i][j]
      matrix[i][j] = matrix[s][j]
      matrix[s][j] = dummy
    end

    # ピボット係数
    num_pivot = matrix[i][i]

    # ピボット行を p で除算
    i.upto(num_index) { |j| matrix[i][j] /= num_pivot.to_f }

    # ピボット列の掃き出し
    num_index.times do |k|
      next if k == i

      num_multi = matrix[k][i]
      i.upto(num_index) { |j| matrix[k][j] -= num_multi * matrix[i][j] }
    end
  end
  matrix
end

def display_answer(matrix)
  # 変数の数
  num_index = matrix.size
  # 出力
  0.upto(num_index - 1) { |i| puts "x#{i + 1} = #{matrix[i][num_index].to_f.round(4)}" }
end

display_answer(gaussian_elimination(matrix))
