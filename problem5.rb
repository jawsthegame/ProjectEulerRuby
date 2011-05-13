require("./utils")
class Problem5
  #2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  #
  #What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  def Problem5.run(n)
    i = 0
    divisors = Array(1..n)
    while 1
      i += 1
      factors = Utils.get_factors(i)
      if !divisors.any?{|x| !factors.include? x}
        puts i
        break
      end
    end
  end
end