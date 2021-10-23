# 課題1. 二次方程式
# ax^2+bx+c=0
# の解を求める3引数の関数（メソッド）を作って下さい。
# ただし、aは0ではなく、虚数解は考えなくても結構です。 

# 課題2. 上記で作ったプログラムにa=0.0000000045, b=10, c=1などの値を代入し、得られた結果と 実際の解とを比較し大きな誤差があった場合プログラムの問題点を考察して下さい。 
# 可能ならばより正確な答えがでる関数を作って下さい。

def quadratic_formula_plus(a, b, c)
    x = (-b + (b**2 - 4.0 * a * c)**0.5) / (2.0 * a)
end

def quadratic_formula_minus(a, b, c)
    x = (-b - (b**2 - 4.0 * a * c)**0.5) / (2.0 * a)
end

a = 1
b = 0
c = 4
puts quadratic_formula_plus(a, b, c)
puts quadratic_formula_minus(a, b, c)

a = a.to_f
b = b.to_f
c = c.to_f
puts quadratic_formula_plus(a, b, c)
puts quadratic_formula_minus(a, b, c)
