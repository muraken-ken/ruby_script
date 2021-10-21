# 入力された行列の転置行列を求めよ

input_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

def transpose_matrix(input_array)
  max_index_x = input_array.length
  max_index_y = input_array[0].length

  x = 0
  y = 0
  output_array = []
  max_index_y.times do
    max_index_x.times do
      output_array << input_array[x][y]
      x += 1
    end
    x = 0
    y += 1
  end

  output_array.each_slice(max_index_x).to_a
end

# p transpose_matrix(input_array)
