class TenjiMaker
  BOIN = { 'A' => 'o--', 'I' => 'o-o', 'U' => 'oo-', 'E' => 'ooo', 'O' => '-oo' }.freeze
  BOIN_EX = { 'A' => '-o-', 'U' => '-oo', 'O' => 'oo-' }.freeze
  SHIIN = { 'K' => '--o', 'S' => 'o-o', 'T' => 'oo-', 'N' => '-o-', 'H' => '-oo', 'M' => 'ooo', 'R' => 'o--',
            'Y' => '-o-', 'W' => '---' }.freeze

  def to_tenji(text)
    tenji = []
    split_text = text.split(' ').map { |c| c.split('') }
    split_text.each do |s|
      tenji.push('---ooo')                         if s.size == 1 && s[0] == 'N'
      tenji.push("#{BOIN[s[0]]}---")               if s.size == 1 && s[0] != 'N'
      tenji.push("#{SHIIN[s[0]]}#{BOIN_EX[s[1]]}") if s.size == 2 && (s[0] == 'Y' || s[0] == 'W')
      tenji.push("#{BOIN[s[1]]}#{SHIIN[s[0]]}")    if s.size == 2 && (s[0] != 'Y' && s[0] != 'W')
    end
    tenji.map! { |a| a.scan(/[-o]{2}/) }
    tenji.transpose.map! { |a| a.join(' ') }.join("\n")
  end
end
