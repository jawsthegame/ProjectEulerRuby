require("./utils")

class Problem21
  def Problem21.d n
    divisors = Utils.get_factors(n).delete_if{|x| x != 1 && x == n}.uniq
    divisors.inject(:+)
  end

  def Problem21.is_amicable a
    b = d a
    a == d(b) && a != b
  end

  def Problem21.run
    (1...10000).select{|n| is_amicable n}.inject(:+)
  end
end