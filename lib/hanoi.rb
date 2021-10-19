# ハノイの塔

def hanoi(n, from, via, to)
  if n == 1
  puts "#{from} から #{to} へ移す"
  else
  hanoi(n - 1, from, to, via)
  puts "#{from} から #{to} へ移す"
  hanoi(n - 1, via, from, to)
  end
end
  
hanoi(4, :A, :B, :C)
