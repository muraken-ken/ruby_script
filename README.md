# Rubyプログラミング 練習問題 & テスト
## 問題一覧
### ループ練習１  
Hello, World![改行]を5回表示させてください。 print(或いはprintf,cout等)を5回コピーすれば当然可能ですが、
ループ構文(for,while等)を利用して、print等は1回の使用にとどめてみてください。
- ./lib/greetings.rb
- ./spec/greetings_spec.rb

### ループ練習２  
可能ならコマンドラインから入力を受け取って、n回表示するように改造してください。
何回目のHello World!かも表示してみてください。
- ./lib/greetings_CLI.rb

### FizzBuzz
ルールは以下の通り
- 1から順番に数を表示する
- その数が3で割り切れるなら"Fizz"、5で割り切れるなら"Buzz"、両方で割り切れるなら"FizzBuzz"と表示する
- 数は30まで
