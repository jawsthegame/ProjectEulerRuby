require("./utils")

class Problem47
  def Problem47.run
    primes = Utils.get_primes(10000)
    count = 0
    n = 4
    (1..Constants::INFINITY).each do |x|
      factors = Utils.get_factors(x)

      if (factors & primes).length == n
        count += 1
      else
        count = 0
      end

      if count == n
        (0...n).each { |num| puts x - num }
        break
      end
    end
  end
end