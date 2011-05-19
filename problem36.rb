class Problem36
  def Problem36.run
    puts (1...1_000_000).to_a.select{|x| String(x) == String(x).reverse && x.to_s(2) == x.to_s(2).reverse}.inject(:+)
  end
end