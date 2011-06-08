require("./utils")

class Problem46
  def Problem46.run
    primes = Utils.get_primes(10000)
    nums = ((3..10000).to_a - primes).select { |n| n % 2 != 0 }
    nums.each do |n|
      found = false
      primes.select { |p| p < n }.each do |p|
        (1...Math.sqrt(n)).each do |sq|
          if p + 2 * sq**2 == n
            found = true
            break
          end
        end
        break if found
      end
      if not found
        puts "Answer: #{n}"
        break
      end
    end
  end
end