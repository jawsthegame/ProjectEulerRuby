require("./utils")

class Problem41
  def Problem41.run
    n = 9
    found = false
    while n > 0
      pandigitals = Utils.get_pandigitals(n).sort.reverse
      pandigitals.each do |p|
        if Utils.is_prime?(p)
          puts p
          found = true
          break
        end
      end
      break if found
      n -= 1
    end
  end
end