require("./utils")

class Problem50
  def Problem50.run
    primes = Utils.get_primes(1000000)
    results = {}
    primes.each do |p|
      found = false
      primes_for_check = primes.select { |x| x < p }
      (0...primes_for_check.length).each do |i|
        sum = 0
        sum_primes = []

        primes_for_check_with_offset = primes_for_check[i..-1]
        primes_for_check_with_offset.each do |x|
          sum += x
          sum_primes << x

          if sum == p
            results[p] = sum_primes.length
            found = true
            break
          end

          break if sum > p
        end
        break if found
      end
    end
    puts "Answer: #{results.invert[results.values.max]}"
  end
end