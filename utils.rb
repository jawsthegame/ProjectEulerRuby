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
    primes
  end
end