class Problem16
  def Problem16.run
    n = 1000
    sum = 0
    String(2**n).chars.each do |x|
      sum += Integer(x)
    end
    puts sum
  end
end