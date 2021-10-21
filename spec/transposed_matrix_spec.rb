# transposed_matrix

require './spec/spec_helper'
require './lib/transposed_matrix'

RSpec.describe 'transpose_matrix' do
  it 'returns true' do
    input_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 2, 3], [4, 5, 6], [7, 8, 9]]
    expect(transpose_matrix(input_array)).to eq input_array.transpose
  end
end
