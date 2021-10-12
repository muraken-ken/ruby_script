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
- ルールは以下の通り
  - 1から順番に数を表示する
  - その数が3で割り切れるなら"Fizz"、5で割り切れるなら"Buzz"、両方で割り切れるなら"FizzBuzz"と表示する
  - 数は30まで
- ./lib/fizzbuzz.rb

### 素数判定
与えられた数までの素数を列挙する
処理にかかった時間を計測しておくと、自分の技術向上に伴って処理時間が短くなっていくのがよくわかる
- ./lib/prime_number.rb

### 世界のナベアツ問題
- ３の倍数と３のつく数字のときだけアホになります
- ルールは以下の通り
  - 1から順番に数を表示する
  - その数が3の倍数、もしくは3のつく数字であれば"Aho"と表示する
  - 要するに"1 2 Aho 4 5 Aho 7 8 Aho 10 11 Aho Aho 14 ･･･"と出力される
- 実行例
```
1 2 Aho 4 5 Aho 7 8 Aho 10 11 Aho Aho 14 Aho 16 17 Aho 19 20 Aho 22 Aho Aho 25 26 Aho 28 29 Aho Aho Aho Aho Aho Aho Aho Aho Aho Aho 40
```
- ./lib/nabeatsu.rb 