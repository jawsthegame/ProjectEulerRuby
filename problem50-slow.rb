require("./utils")

class Problem50
  def Problem50.run
    max_prime = 100000
    primes = Utils.get_primes(max_prime)

    prime_sequences = {}

    primes.each do |prime|
      good_seq = []
      possible_primes = primes.select { |p| p < prime / 2 }.reverse
      while possible_primes.length > 0
        prime_seq = []
        possible_primes.each do |p|
          prime_seq << p
          sum = prime_seq.inject(:+)
          if sum == prime
            good_seq << prime_seq
            break
          elsif sum > prime
            break
          end
        end
        possible_primes.delete_at(0)
      end
      prime_sequences[prime] = good_seq
    end
    puts "Answer: #{prime_sequences.invert[prime_sequences.values.max]}"
  end
end