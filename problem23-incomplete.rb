require("./utils")

class Problem23
  def Problem23.is_abundant n
    Utils.get_factors(n)[0...-1].inject(:+) > n
  end

  def Problem23.cannot_be_written_as_sum n
    not (1..n / 2).any?{|x| is_abundant(x) && is_abundant(n - x)}
  end

  def Problem23.run
    sum = 0
    (24..28123).each{|x| sum += x if cannot_be_written_as_sum x}
  end
end