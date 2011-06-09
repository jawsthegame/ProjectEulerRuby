class Problem09
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