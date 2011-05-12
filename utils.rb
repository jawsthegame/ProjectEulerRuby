class Utils
  def Utils.get_primes n
    i = 1
    primes = []
    non_primes = []
    max_non_prime = Math.sqrt(n)
    while i < n
      i += 1
      if i > max_non_prime
        primes.push(i)
        next
      end
      if i != 2 && i % 2 == 0
        non_primes.push(i)
        next
      end
      if non_primes.include?(i)
        next
      end
      primes.push(i)
      multiplier = 2
      product = i * multiplier
      while product <= n
        non_primes.push(product)
        multiplier += 1
        product = i * multiplier
      end
    end

    primes
  end
end