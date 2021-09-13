# ループ練習1

class Greetings
  def greet
    'Hello, World!'
  end

  def output(n)
    n.times { puts greet }
  end
end

Greetings.new.output(5)
