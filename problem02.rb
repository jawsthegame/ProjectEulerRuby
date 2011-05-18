class Problem02
  $sum = 0

  def Problem02.run
    next_fibonacci(1, 2)
    p $sum
  end

  def Problem02.next_fibonacci(a, b)
    if a > 4000000
      return
    end
    if a % 2 == 0
      $sum += a
    end
    next_fibonacci(b, a + b)
  end
end