class Problem01
  def Problem01.run
    puts (1...1000).select{|n| n % 3 == 0 or n % 5 == 0}.inject(:+)
  end
end