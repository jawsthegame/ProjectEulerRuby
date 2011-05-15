require("bigdecimal")
require("bigdecimal/util")

class Problem25
  $count = 0
  def Problem25.next_fibonacci a, b
    $count += 1
    return a if Math.log10(BigDecimal.new("#{a}")) >= 999
    next_fibonacci b, a + b
  end

  def Problem25.run
    next_fibonacci(1, 1)
    $count
  end
end