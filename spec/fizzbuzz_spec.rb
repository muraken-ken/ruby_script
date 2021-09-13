# fizzbuzz

require './spec/spec_helper'
require './lib/fizzbuzz'

RSpec.describe 'fizzbuzz' do
  it 'returns correct string' do
    expect(FizzBuzz.new.fizzbuzz(1)).to eq '1'
    expect(FizzBuzz.new.fizzbuzz(2)).to eq '2'
    expect(FizzBuzz.new.fizzbuzz(3)).to eq 'Fizz'
    expect(FizzBuzz.new.fizzbuzz(4)).to eq '4'
    expect(FizzBuzz.new.fizzbuzz(5)).to eq 'Buzz'
    expect(FizzBuzz.new.fizzbuzz(15)).to eq 'FizzBuzz'
  end
end
