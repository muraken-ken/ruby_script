require './spec/spec_helper'
require './lib/tenji_maker'

RSpec.describe 'tenji_maker' do
  it 'returns correct tenji' do
    expect(TenjiMaker.new.to_tenji('A HI RU')).to eq <<~TENJI.chomp
      o- o- oo
      -- o- -o
      -- oo --
    TENJI

    expect(TenjiMaker.new.to_tenji('KI RI N')).to eq <<~TENJI.chomp
      o- o- --
      o- oo -o
      -o -- oo
    TENJI

    expect(TenjiMaker.new.to_tenji('SI MA U MA')).to eq <<~TENJI.chomp
      o- o- oo o-
      oo -o -- -o
      -o oo -- oo
    TENJI

    expect(TenjiMaker.new.to_tenji('NI WA TO RI')).to eq <<~TENJI.chomp
      o- -- -o o-
      o- -- oo oo
      o- o- o- --
    TENJI

    expect(TenjiMaker.new.to_tenji('HI YO KO')).to eq <<~TENJI.chomp
      o- -o -o
      o- -o o-
      oo o- -o
    TENJI

    expect(TenjiMaker.new.to_tenji('KI TU NE')).to eq <<~TENJI.chomp
      o- oo oo
      o- -o o-
      -o o- o-
    TENJI
  end
end
