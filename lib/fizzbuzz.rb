class FizzBuzz
  def fizzbuzz(n)
    if (n % 15).zero?
      'FizzBuzz'
    elsif (n % 3).zero?
      'Fizz'
    elsif (n % 5).zero?
      'Buzz'
    else
      n.to_s
    end
  end

  def output
    1.upto(30) { |i| puts fizzbuzz(i) }
  end
end

FizzBuzz.new.output
