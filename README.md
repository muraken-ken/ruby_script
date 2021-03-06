# Rubyプログラミング 練習問題 & テスト
- [参照元](http://vipprog.net/wiki/exercise.html#pc7a3f04)
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

### Base64  
入力されたデータをエンコード／デコードするプログラムを作成せよ。 データの入出力方法は自由とする。
- [base64.rb](./lib/base64.rb)

### 累乗  
aのn乗を返すような2引数の関数（メソッド）を下記の方法で作って下さい。ただしa, nは正整数とします。（0や負の数に関しては考慮しなくても結構です。）
- 課題1  
aをn回かけるループ文を使って作って下さい。
- 課題2  
課題1で作った物より高速なものを作って下さい。（計算時間のオーダーがlg(n)となるように）。  
計算時間のオーダーがlg(n)というのは平たく言えばnに対して計算の手間（例えばループ回数）がおおよそlg(n)回ということです。
ここではnが8程度ならば凡そ3回、1024程度ならば凡そ10回の手間で計算できる、というように解釈していただければ構いません。
- [exponentiation.rb](./lib/exponentiation.rb)

### 配列から大きい要素とその添字を求めるプログラム  
配列に負でない整数が格納されている。これらの整数の中から大きい順に3つの数字とその添字を出力せよ。
- 入力例
```
[12, 6, 8, 3, 10, 1, 0, 9]
```
- 出力例
```
0 -> 12 
4 -> 10 
7 -> 9 
```
- [array_top3.rb](./lib/array_top3.rb)

### 二次方程式の解  
の解を求める3引数の関数（メソッド）を作って下さい。ただし、aは0ではなく、虚数解は考えなくても結構です。 課題2. 上記で作ったプログラムにa=0.0000000045, b=10, c=1などの値を代入し、得られた結果と 実際の解とを比較し大きな誤差があった場合プログラムの問題点を考察して下さい。 可能ならばより正確な答えがでる関数を作って下さい。  
※これはdoubleやfloatの誤差が問題となる初歩的な問題です。
- [quadratic_formula.rb](./lib/quadratic_formula.rb)

### 連立方程式を解くプログラム  
クラーメル法でもガウス法でもかまいません
- [gaussian_elimination.rb](./lib/gaussian_elimination.rb)

### フラクタル図形の一種  
- シェルピンスキーのギャスケット
- wikipedia等を参考にし、これを描画するプログラムを書いてください。
- C言語の解答は基本情報技術者H15春午後の問題問6を参照
- [sierpinski_gasket.rb](./lib/sierpinski_gasket.rb)

### 迷路を解くプログラム  
- 10 x 10の迷路を解く
- 入力は、4辺のどこか2箇所が必ず開いている（スタートorゴール）ものとする
- 移動方向は縦横のみ、斜めはなし
- 入力例
```
# ########
# ## ### #
#    ##  #
####    ##
# ## #####
#    #   #
# #### # #
#      # #
## ## ## #
######## #
```
- 出力例
```
#+########
#+## ### #
#++++##  #
####+   ##
# ##+#####
#++++#+++#
#+####+#+#
#++++++#+#
## ## ##+#
########+#
```
- [maze.rb](./lib/maze.rb)

### 島を数える  
- h x w からなるマップが与えられる
- マップの各マスは海(.)または陸(#)からなる
- 辺で (左右上下に) 連結した陸を一つの島と数える
- 入力は一行目に2つの整数 h w、2行目から続くh行に各行長さwの文字列としてマップが与えられる
- 入力例
```
5 3
##.
#.#
#.#
.##
#..
```
- 出力例
```
3
```
- [island.rb](./lib/island.rb)

### 星座を求めるプログラム  
- 月日から星座を求める
- [zodiac_sign.rb](./lib/zodiac_sign.rb)

### 覆面算
- Google入社試験問題
- WWWDOT - GOOGLE = DOTCOM
- ただし、EとMは交換可能
- [google.rb](./lib/google.rb)

### 点字メーカーチャレンジ
- チェリー本の作者：伊藤さんからのお題（詳細は下記を参照）
- [tenji-maker-challenge](https://github.com/JunichiIto/tenji-maker-challenge)
- [tenji_maker.rb](./lib/tenji_maker.rb)

### jra_quine
- 超絶技巧プログラミング(笑)
- JRAマークのコードをコピペして実行すると同じコードが生成される
- [jra_quine](./lib/jra_quine/quine_jra.rb)
