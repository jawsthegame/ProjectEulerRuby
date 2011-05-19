class Problem48
  def Problem48.run
    puts String((1..1000).inject{|sum, i| sum + i**i})[-10..-1]
  end
end