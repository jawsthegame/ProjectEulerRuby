require("./utils")

class Problem10
  def Problem10.run n
     puts Utils.get_primes(n).inject(:+)
  end
end