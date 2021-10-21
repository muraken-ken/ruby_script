# Caesar暗号を解読するプログラムを作り,暗号を解読してください。 
# 暗号鍵（何文字ずらすか）は不明ですが、文字列に"person"が含まれることがわかっています。ご利用ください。 
# Caesar暗号についてはシーザー暗号-wikipediaを参照してください。

# 暗号文 "qdq-gi.q-a ziatmxxitmdqibtqi-ustbi ri.qmoqrcxi.qbubu zir -ibtqi-qp-qaai ripmymsqkir -ibtqi-qy dmxi ri.cnxuoi rruoumxakir -ibtqiqzmobyqzbkii-q.qmxi -imyqzpyqzbi rixmeaki -puzmzoqai -i-qscxmbu zaimzpir -i btq-iymbbq-a;iz -iatmxximzgi.q-a zinqiuzimzgiemgipuao-uyuzmbqpimsmuzabir -ia. za -uzsiacotiimi.qbubu zj" （最初と最後のダブルクォートは除く）
# 使用される文字の列 "abcdefghijklmnopqrstuvwxyz .,-" （ダブルクォートは除く。空白もあります。注意してください。暗号文にセミコロン";"が含まれています。これは置換するべき文字列に含まれていないので、そのままにしてください。）

crypto = <<-CAESAR
  qdq-gi.q-a ziatmxxitmdqibtqi-ustbi ri.qmoqrcxi.qbubu zir -ibtqi-qp-qaai ripmymsqkir -ibtqi-qy dmxi ri.cnxuoi rruoumxakir -ibtqiqzmobyqzbkii-q.qmxi -imyqzpyqzbi rixmeaki -puzmzoqai -i-qscxmbu zaimzpir -i btq-iymbbq-a;iz -iatmxximzgi.q-a zinqiuzimzgiemgipuao-uyuzmbqpimsmuzabir -ia. za -uzsiacotiimi.qbubu zj
CAESAR

def key_hash
  key = 'abcdefghijklmnopqrstuvwxyz .,-'
  key_array = key.split('')
  key_array = [key_array, key_array.rotate].transpose.flatten
  Hash[*key_array]
end

def cryptanalysis(code)
  i = 0
  until code.include?('person')
    code = code.gsub(/[abcdefghijklmnopqrstuvwxyz .,-]/, key_hash)
    i += 1
  end
  puts "鍵（シフト数）は #{i}です。"
  puts code
end

cryptanalysis(crypto)
