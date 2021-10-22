# Rubyプログラミング 練習問題 & テスト
## 問題一覧
### ループ練習１  
Hello, World![改行]を5回表示させてください。 print(或いはprintf,cout等)を5回コピーすれば当然可能ですが、
ループ構文(for,while等)を利用して、print等は1回の使用にとどめてみてください。
- [greetings.rb](./lib/greetings.rb)

### ループ練習２  
可能ならコマンドラインから入力を受け取って、n回表示するように改造してください。
何回目のHello World!かも表示してみてください。
- [greetings_CLI.rb](./lib/greetings_CLI.rb)

### FizzBuzz
- ルールは以下の通り
  - 1から順番に数を表示する
  - その数が3で割り切れるなら"Fizz"、5で割り切れるなら"Buzz"、両方で割り切れるなら"FizzBuzz"と表示する
  - 数は30まで
- [fizzbuzz.rb](./lib/fizzbuzz.rb)

### 素数判定
与えられた数までの素数を列挙する
処理にかかった時間を計測しておくと、自分の技術向上に伴って処理時間が短くなっていくのがよくわかる
- [prime_numbers.rb](./lib/prime_numbers.rb)

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
- [nabeatsu.rb](./lib/nabeatsu.rb) 

### うるう年測定  
入力された整数がグレゴリオ暦（いつも使ってるやつ）でうるう年であるか判定せよ
- グレゴリオ暦では、次の規則に従って400年間に97回の閏年を設ける
  - 西暦年が4で割り切れる年は(原則として)閏年
  - ただし、西暦年が100で割り切れる年は(原則として)平年
  - ただし、西暦年が400で割り切れる年は必ず閏年
- 出力例
```
1992年はうるう年です
2000年はうるう年です
2001年はうるう年ではありません
```
- [leap_year.rb](./lib/leap_year.rb)

### 平方根を求めてみる
- 与えられた数の平方根を求める
- 当然ライブラリは使わない
- [nroot.rb](./lib/nroot.rb)

### ハノイの塔  
与えられたn枚の円盤を用いたハノイの塔を再帰的アルゴリズムを用いて解くプログラムを作成せよ。出力は円盤の移動の記録及び手数とする。
- [hanoi.rb](./lib/hanoi.rb)

### 数当てゲーム  
これは答えの数を探すゲームです。適当な数を入れると正解よりも大きいか小さいか,または正解であるか出力されます。それを繰り返すことで答えを探すことができます。このゲームを作成しなさい。答えの数は乱数を使って毎回別の答えを用意しましょう。
- [high_low.rb](./lib/high_low.rb)

### 数当てゲーム その２(Hit&Blow)  
これはｎ桁の数を探すゲームです。適当な数を入れると桁も数字もあっていれば「Hit」としその個数が、数字はあっているが桁が異なっていれば「Blow」としてその個数が出力されます。それを繰り返すことで答えを探すことができます。このゲームを作成しなさい。答えの数は乱数を使って毎回別の答えを用意しましょう。
具体的には
正解が1234だとして
4321 と入力 4blow
1245 と入力 2hit 1blow
なおルール上4422などのゾロ目の正解は出ないようにしましょう。
また、先頭が0だとn桁の数字じゃなくなるのでせっかくなので0は発生させないようにしましょう。
- [hit_blow.rb](./lib/hit_blow.rb)

### カレンダー出力  
年と月を入力してカレンダーを出力する。 画面フォーマットはCUI,GUI,WEB等自由とする
- [current_calendar](./lib/current_calendar.rb)
- [calendar](./lib/calendar.rb)

### Caesar暗号解読  
Caesar暗号を解読するプログラムを作り,暗号を解読してください。 暗号鍵（何文字ずらすか）は不明ですが、文字列に"person"が含まれることがわかっています。ご利用ください。 Caesar暗号についてはシーザー暗号-wikipediaを参照してください。

- 暗号文 "qdq-gi.q-a ziatmxxitmdqibtqi-ustbi ri.qmoqrcxi.qbubu zir -ibtqi-qp-qaai ripmymsqkir -ibtqi-qy dmxi ri.cnxuoi rruoumxakir -ibtqiqzmobyqzbkii-q.qmxi -imyqzpyqzbi rixmeaki -puzmzoqai -i-qscxmbu zaimzpir -i btq-iymbbq-a;iz -iatmxximzgi.q-a zinqiuzimzgiemgipuao-uyuzmbqpimsmuzabir -ia. za -uzsiacotiimi.qbubu zj" （最初と最後のダブルクォートは除く）
- 使用される文字の列 "abcdefghijklmnopqrstuvwxyz .,-" （ダブルクォートは除く。空白もあります。注意してください。暗号文にセミコロン";"が含まれています。これは置換するべき文字列に含まれていないので、そのままにしてください。）
- [caesar.rb](./lib/caesar.rb)

### 転置行列  
入力された行列の転置行列を求めよ
- 入力例
```
1 2 3
4 5 6
7 8 9
```
- 出力例
```
1 4 7
2 5 8
3 6 9
```
- [transposed_matrix.rb](./lib/transposed_matrix.rb)

### 配列いじり  
配列の先頭はそのままに、先頭以外の要素をすべて0に置き換える。
- 置換前
```
3 5 2 4 2
```
- 置換後
```
3 0 0 0 0
```
- [array_transrate.rb](./lib/array_transrate.rb)

### 干支を求めるプログラム  
西暦から干支（十干／十二支）を求める
- 計算方法
  - 十干：10で割った余り(0から) => 庚辛壬癸甲乙丙丁戊己
  - 十二支：12で割った余り(0から) => 申酉戌亥子丑寅卯辰巳午未
  - 60年周期
- [eto.rb](./lib/eto.rb)

### 線形合同法  
線形合同法を用いて0<=x<1の範囲の乱数を発生させるプログラムを作成せよ。M＝65536(=2^16),A=997,B=1,Xの初期値を12345として100個の乱数を発生させ,その値と平均を出力しなさい。
- [linear_congruential_generators.rb](./lib/linear_congruential_generators.rb)

### フィボナッチ数列  
フィボナッチ数列とは下記の数列のように今の項と前項の和が次の項となるような数列です。
```
1 1 2 3 5 8 13 21 34 55 89 144
```
- 課題1  
フィボナッチ数列の第n項を求めるプログラムを再帰呼出しを用いて書いて下さい。ただしnはコマンドライン引数で得るものとします。
- 課題2  
フィボナッチ数列の第n項を求めるプログラムを再帰呼出しを用いずに書いて下さい。ただしnはコマンドライン引数で得るものとします。
- [fibonacci_number.rb](./lib/fibonacci_number.rb)
