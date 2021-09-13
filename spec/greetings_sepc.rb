# ループ練習1

require './spec/spec_helper'
require './lib/greetings'

RSpec.describe 'Greetings' do
  let(:human) { Greetings.new }
  it 'returns valid string' do
    expect(human.greet).to eq 'Hello, World!'
  end
  it 'return valid number of times to loop' do
    expect(human.output(1)).to eq 1
  end
end
