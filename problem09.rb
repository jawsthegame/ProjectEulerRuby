class Problem09
  #A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
  #a^2 + b^2 = c^2
  #
  #For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.
  #
  #There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  #Find the product abc.

  $max = 500

  def Problem09.run
    i = 1
    found = false
    while i <= $max
      (i + 1..$max).each do |j|
        (i + 2..$max).each do |k|
          if i**2 + j**2 == k**2 && i + j + k == 1000
            puts "#{i}, #{j}, #{k}"
            puts "Product: #{i * j * k}"
            found = true
            break
          end
        end
        if found
          break
        end
      end
      if found
        break
      end
      i += 1
    end
  end
end