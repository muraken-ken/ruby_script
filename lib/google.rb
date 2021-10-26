# Google入社試験問題
# ・覆面算
# WWWDOT - GOOGLE = DOTCOM
# ただし、EとMは交換可能

def to_int(a, b, c, d, e, f)
  10**5 * a + 10**4 * b + 10**3 * c + 10**2 * d + 10 * e + f
end

ans = []
[*0..9].permutation(9) do |w, g, d, c, e, l, m, o, t|
  next if (w * g * d).zero? || ((g + d) != w && (g + d +1) != w)

  wwwdot = to_int(w, w, w, d, o, t)
  google = to_int(g, o, o, g, l, e)
  dotcom = to_int(d, o, t, c, o, m)
  ans << [c, d, e, g, l, m, o, t, w] if wwwdot - google == dotcom
end

p ans
