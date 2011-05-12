require("./utils")

class Problem3
  # The prime factors of 13195 are 5, 7, 13 and 29.
  #
  # What is the largest prime factor of the number 600851475143 ?

  $num = 13195

  def Problem3.run
    max_factor = Math.sqrt($num)
    primes = Utils.get_primes(max_factor).reverse
    primes.each do |prime|
      if $num % prime == 0
        puts prime
      end
    end
  end
end