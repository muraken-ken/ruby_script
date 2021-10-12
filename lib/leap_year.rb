class LeapYear
  def leap_year(n)
    if (n % 400).zero?
      'うるう年です'
    elsif (n % 100).zero?
      'うるう年ではありません'
    elsif (n % 4).zero?
      'うるう年です'
    else
      'うるう年ではありません'
    end
  end

  def output(n = 2000)
    puts "#{n}年は#{leap_year(n)}"
  end
end

LeapYear.new.output(1992)
LeapYear.new.output(2000)
LeapYear.new.output(2001)
