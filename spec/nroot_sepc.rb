# nroot

require './spec/spec_helper'
require './lib/nroot'

RSpec.describe 'n_root' do
  it 'returns correct number' do
    expect(NRoot.new.nroot(1).floor(7)).to eq 1
    expect(NRoot.new.nroot(2).floor(7)).to eq 1.4142135
    expect(NRoot.new.nroot(3).floor(7)).to eq 1.7320508
    expect(NRoot.new.nroot(4).floor(7)).to eq 2
    expect(NRoot.new.nroot(5).floor(7)).to eq 2.2360679
  end
end
