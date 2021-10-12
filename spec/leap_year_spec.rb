# leap_year

require './spec/spec_helper'
require './lib/leap_year'

RSpec.describe 'leap_year' do
  it 'returns correct string' do
    expect(LeapYear.new.leap_year(4)).to eq 'うるう年です'
    expect(LeapYear.new.leap_year(100)).to eq 'うるう年ではありません'
    expect(LeapYear.new.leap_year(400)).to eq 'うるう年です'
    expect(LeapYear.new.leap_year(5)).to eq 'うるう年ではありません'
  end
end
