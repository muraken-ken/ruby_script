require 'readline'
require 'benchmark'

def input_number
  while input_number = Readline.readline('正の整数を入力してください> ').to_i
    return input_number if input_number.positive?
  end
end

def recursive_fibonacci(n)
  n = n.to_i
  return 0 if n <= 0
  return n if n == 1

  recursive_fibonacci(n - 1) + recursive_fibonacci(n - 2)
end

def fibonacci(n)
  n = n.to_i
  return if n <= 0
  return n if n == 1

  a = 0
  b = 1
  n.times { a, b = b, a + b }
  a
end

# number = input_number
# 1.upto(number) { |n| print "#{recursive_fibonacci(n)} " }
# puts ''
# 1.upto(number) { |n| print "#{fibonacci(n)} " }
# puts ''

Benchmark.bm 10 do |r|
  r.report 'Recursive' do
    1.upto(35) { |n| recursive_fibonacci(n) }
  end
  r.report 'non-Recursive' do
    1.upto(35) { |n| fibonacci(n) }
  end
end
