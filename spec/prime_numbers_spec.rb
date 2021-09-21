# fizzbuzz

require './spec/spec_helper'
require './lib/prime_numbers'

RSpec.describe 'prime_numbers' do
  it 'returns correct boolean' do
    expect(PrimeNumber.new.prime_number?(1)).to be_falsey
    expect(PrimeNumber.new.prime_number?(2)).to be_truthy
    expect(PrimeNumber.new.prime_number?(3)).to be_truthy
    expect(PrimeNumber.new.prime_number?(4)).to be_falsey
    expect(PrimeNumber.new.prime_number?(5)).to be_truthy
    expect(PrimeNumber.new.prime_number?(6)).to be_falsey
    expect(PrimeNumber.new.prime_number?(7)).to be_truthy
    expect(PrimeNumber.new.prime_number?(8)).to be_falsey
    expect(PrimeNumber.new.prime_number?(9)).to be_falsey
  end
end
