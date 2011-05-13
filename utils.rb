class Utils
  Infinity = 1.0/0

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

  def Utils.get_factors n
    max_factor = Math.sqrt(n)
    initial_factors = (1..max_factor).select{|x| n % x == 0}
    factors = initial_factors.clone
    initial_factors.each do |x|
      factors.push(n / x)
    end
    factors.sort
  end

  def Utils.factorial n
    if n == 1
      return n
    else
      return n * factorial(n - 1)
    end
  end

  def Utils.is_prime? n
    !(2..n - 1).any?{|x| n % x == 0} && n != 1
  end

  def Utils.get_nth_prime n
    (1..Infinity).lazy_select{|x| Utils.is_prime? x}.take(n).last
  end
end

module Enumerable
  def lazy_select
    Enumerator.new do |yielder|
      each do |obj|
        yielder.yield(obj) if yield(obj)
      end
    end
  end
end