require 'readline'

# 4桁の答えをセットする（先頭は0以外）
def set_answer
  answer = (0..9).to_a
  while answer[0].zero? do
    answer = answer.sample(4)
  end
  return answer
end

# 4桁の数字入力
def input_number
  input_array = []
  stty_save = `stty -g`.chomp
  begin
    while input_array = Readline.readline('4桁の数字を入力してください（重複なし、先頭は0以外）> ', true).split('').map(&:to_i)
      return input_array if input_array.count == 4 && input_array.uniq.count == 4 && input_array[0].positive?

      puts '数字を入れ直してください'
    end
  rescue Interrupt
    system('stty', stty_save)
    exit
  end
end

answer = set_answer
hit = 0
until hit == 4
  input_array = input_number
  count_answer = 0
  count_input = 0
  hit = 0
  blow = 0
  answer.each do |ans|
    input_array.each do |input|
      if ans == input && count_answer == count_input
        hit += 1
        count_input += 1
        break
      elsif ans == input
        blow += 1
        count_input += 1
        break
      end
      count_input += 1
    end
    count_answer += 1
    count_input = 0
  end
  puts "Hit:#{hit}、blow:#{blow}"
end
puts 'おめでとう正解です。'
