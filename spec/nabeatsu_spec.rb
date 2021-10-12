# nabeatsu

require './spec/spec_helper'
require './lib/nabeatsu'

RSpec.describe 'nabeatsu' do
  it 'returns correct string' do
    expect(Nabeatsu.new.aho(1)).to eq '1'
    expect(Nabeatsu.new.aho(2)).to eq '2'
    expect(Nabeatsu.new.aho(3)).to eq 'Aho'
    expect(Nabeatsu.new.aho(4)).to eq '4'
    expect(Nabeatsu.new.aho(6)).to eq 'Aho'
    expect(Nabeatsu.new.aho(13)).to eq 'Aho'
    expect(Nabeatsu.new.aho(30)).to eq 'Aho'
    expect(Nabeatsu.new.aho(40)).to eq '40'
  end
end
