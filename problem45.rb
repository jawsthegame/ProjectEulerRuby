require("./utils")

class Problem45
  # this guy is really slow
  def Problem45.run
    (166..Constants::INFINITY).each do |p|
      pentagonal = get_pentagonal_number(p)
      foundString = "P-#{p} "
      last_h = 1
      found = false
      puts p if p % 10000 == 0
      (last_h...p).each do |h|
        hexagonal = get_hexagonal_number(h)
        if hexagonal == pentagonal
          foundString += "H-#{h}"
          found = true
          break
        end
        last_h = h
      end
      if found
        puts "Answer: #{pentagonal}"
        break
      end
    end
  end
  
  def Problem45.get_pentagonal_number n
    n * (3 * n - 1) / 2
  end
  
  def Problem45.get_hexagonal_number n
    n * (2 * n - 1)
  end
end