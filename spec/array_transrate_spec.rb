# transposed_matrix

require './spec/spec_helper'
require './lib/array_transrate'

RSpec.describe 'array_transrate' do
  it 'returns true' do
    input_array = (1..4).to_a
    expect(array_transrate(input_array)).to eq([1,0,0,0])
  end
end
