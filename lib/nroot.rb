# 平方根を求めてみる
# 与えられた数の平方根を求める
# 当然ライブラリは使わない

# ニュートン法 漸化式
# x = √5の場合
# x * x - 5 = 0
# f(x) = x^2 - 5 でグラフ上の点(xn, f(xn))接戦がy = 0と交わる点をxn+1
# xn+1 = xn - f(xn)/f'(xn)
# 上記にa - x^b を代入して簡約
# xn+1 = ( (b-1)*x + a/(x**(b-1)) ) / b
# a：入力、b：べき乗数、ｘ：初期値

class NRoot
  def nroot(a, b = 2)
    x = a.to_f
    20.times do |i|
      answer = ((b - 1) * x + a / (x**(b - 1))) / b
      return answer if (x - answer) < 1e-5

      x = answer
    end
    raise
  end

  def output(a, b = 2)
    puts nroot(a, b).floor(7)
  end
end

NRoot.new.output(5)