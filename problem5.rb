require("./utils")
class Problem5
  #2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  #
  #What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  def Problem5.run(n)
    divisors = Array(1..n).reverse
    max = Utils.factorial(n)
    (n..max).each do |i|
      good = true
      divisors.each do |d|
        if i % d != 0
          good = false
          break
        end
      end
      if good
        puts i
        break
      end
    end
  end
end