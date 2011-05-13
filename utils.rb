class Utils
  def Utils.get_primes n
    max_non_prime = Integer(Math.sqrt(n))
    primes = Array(2..n)
    primes.each do |p|
      if p > max_non_prime
        break
      end
      primes.delete_if { |x| x != p && x % p == 0 }
    end
  end

  def Utils.get_factors n
    max_factor = Math.sqrt(n)
    initial_factors = (1..max_factor).select{|x| n % x == 0}
    factors = initial_factors.clone
    initial_factors.each do |x|
      factors.push(n / x)
    end
    factors.sort
  end
end