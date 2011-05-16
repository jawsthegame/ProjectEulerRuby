class Problem28
  def Problem28.run
    # top-right = n**2
    # top-left = n**2 - n - 1
    # bottom-left = n**2 - 2 * n - 2
    # bottom-right = n**2 - 3 * n - 3

    sum = 0
    (3..5).step(2).each do |x|
      puts x**2
      sum += x**2
      puts x**2 - x - 1
      sum += x**2 - x - 1
      sum += x**2 - 2 * x - 2
      sum += x**2 - 3 * x - 3
    end

    sum
  end
end