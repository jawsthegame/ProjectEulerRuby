class Problem5
  #2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  #
  #What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  def run()

    i = 0
    while 1
      i += 1
      good = true
      (2..20).each do |j|
        if i % j != 0
          good = false
          break
        end
      end

      if good
        p i
        break
      end
    end
  end
end