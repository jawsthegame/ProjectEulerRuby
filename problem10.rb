require("./utils")

class Problem10
  def Problem10.run
    n = 2000000
    puts Utils.get_primes(n).inject(:+)
  end
end