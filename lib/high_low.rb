# これは答えの数を探すゲームです。
# 適当な数を入れると正解よりも大きいか小さいか,または正解であるか出力されます。
# それを繰り返すことで答えを探すことができます。
# このゲームを作成しなさい。
# 答えの数は乱数を使って毎回別の答えを用意しましょう。

class HighLow
  def main
    target_number = rand(1..100)
    times = 0
    while times < 15 do
      times += 1
      print '1～100までの数字を入力してください（0：終了）：'
      input_number = gets.chomp.to_i
      if input_number.zero?
        give_up
        break
      elsif target_number == input_number
        win(times)
        break
      elsif target_number > input_number
        puts 'low!'
      else
        puts 'high'
      end
    end
  end

  def win(n)
    puts '--- あなたの勝ちです！ ---'
    puts "#{n}回目で的中しました！"
  end

  def give_up
    puts '--- ギブアップしました。 ---'
  end
end

HighLow.new.main