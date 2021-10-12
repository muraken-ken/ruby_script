class Nabeatsu
  def aho(n)
    if (n % 3).zero? || n.to_s.include?('3')
      'Aho'
    else
      n.to_s
    end
  end

  def output
    1.upto(40) { |i| print "#{aho(i)} " }
    print "\n"
  end
end

Nabeatsu.new.output
