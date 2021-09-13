# ループ練習2

class Greetings
  def greet
    'Hello, World!'
  end

  def output(n)
    n.times { |m| puts "#{greet} #{m + 1}" }
  end
end

Greetings.new.output(ARGV[0].to_i)
