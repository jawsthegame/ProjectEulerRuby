require("./utils")
class Problem05
  #2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  #
  #What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  def Problem05.run
    n = 20
    divisors = Array(1..n).reverse
    max = Utils.factorial(n)

    divisors.each do |x|
      divisors.delete_if{|d| x != d && x % d == 0}
    end

    puts (n..max).step(n).find{|i| not divisors.any?{|d| i % d != 0} }
  end
end