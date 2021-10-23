# フラクタル図形の一種
# シェルピンスキーのギャスケット-wikipedia等を参考にし、これを描画するプログラムを書いてください。
# C言語の解答は基本情報技術者H15春午後の問題問6を参照

require 'RMagick'

class Gasket
  include Magick

  def initialize
    x = 300
    y = 300
    @canvas = Magick::Image.new(x, y) { self.background_color = 'white' }
    @draw = Magick::Draw.new
    @first = [
      [x / 2, 0],
      [0, y],
      [x, y]
    ]
  end

  def gasket(p0, p1, p2)
    @draw.fill('black')
    @draw.polygon(p0[0], p0[1], p1[0], p1[1], p2[0], p2[1])
    m0 = middle_point(p0, p1)
    m1 = middle_point(p1, p2)
    m2 = middle_point(p2, p0)
    @draw.fill('white')
    @draw.polygon(m0[0], m0[1], m1[0], m1[1], m2[0], m2[1])
    if (p0[0] - m0[0]).abs > 2
      gasket(p0, m0, m2)
      gasket(m0, p1, m1)
      gasket(m2, m1, p2)
    end
  end

  def middle_point(a, b)
    middle_x = a[0] - (a[0] - b[0]) / 2
    middle_y = a[1] - (a[1] - b[1]) / 2
    [middle_x, middle_y]
  end

  def run
    gasket(@first[0], @first[1], @first[2])
    @draw.draw(@canvas)
    @canvas.write('gasket.bmp')
  end
end

gasket = Gasket.new
gasket.run
