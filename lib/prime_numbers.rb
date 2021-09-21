# prime number
require 'benchmark'
require 'prime'

class PrimeNumber
  def prime_number?(integer)
    return false if integer == 1
    return true if integer == 2
    return false if integer.even?

    root = (integer**0.5).to_i
    3.upto(root) do |i|
      return false if (integer % i).zero?
    end
    true
  end

  def output(integer = 100)
    1.upto(integer) do |i|
      puts i.to_s if prime_number?(i)

      next
    end
  end

  def benchmark(integer = 100)
    1.upto(integer) do |i|
      i if prime_number?(i)

      next
    end
  end
end

PrimeNumber.new.output()

Benchmark.bm 10 do |r|
  r.report 'PrimeNumber' do
    PrimeNumber.new.benchmark(100_000_0)
  end
  r.report 'Library' do
    Prime.each(100_000_0) do |prime|
      prime
    end
  end
end
