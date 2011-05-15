class Problem2
  $sum = 0

  def run()
    next_fibonacci(1, 2)
    p $sum
  end

  def next_fibonacci(a, b)
    if a > 4000000
      return
    end
    if a % 2 == 0
      $sum += a
    end
    next_fibonacci(b, a + b)
  end
end