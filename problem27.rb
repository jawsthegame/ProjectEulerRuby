require("./utils")

class Problem27
  def Problem27.run
    primes = Utils.get_primes(1000)
    consecutive_prime_counts = {}
    (-1000..1000).each do |a|
      primes.each do |b|
        count = 0
        (0..Constants::INFINITY).each do |n|
          quad_result = run_quadratic(a, b, n)
          if Utils.is_prime?(quad_result)
            count += 1
          else
            consecutive_prime_counts["#{a},#{b}"] = count
            break
          end
        end
      end
    end
    coefficients = consecutive_prime_counts.invert[consecutive_prime_counts.values.max].split(",")
    puts "Answer: #{Integer(coefficients[0]) * Integer(coefficients[1])}"
  end

  def Problem27.run_quadratic a, b, n
    n**2 + a*n + b
  end
end