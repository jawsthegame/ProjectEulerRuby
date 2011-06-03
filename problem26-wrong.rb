require("bigdecimal")

class Problem26
  def Problem26.tortoise_and_hare(num_string)
    hare = 0
    tortoise = 0

    while 1
      if hare == num_string.length - 1
        return 0
      end
      hare += 1

      if hare == num_string.length - 1
        return 0
      end
      hare += 1
      tortoise += 1

      if num_string[hare]  == num_string[tortoise]
        return hare - tortoise
      end
    end
  end

  def Problem26.run
    cycle_lengths = {}
    (2..1000).each do |d|
      num = BigDecimal("1.0", 100000) / BigDecimal("#{d}.0", 100000)
      num_string = num.to_s("F").sub("0.", "").split("")
      cycle_lengths[d] = tortoise_and_hare(num_string)
    end

    puts "Answer: #{cycle_lengths.invert[cycle_lengths.values.max]} => #{cycle_lengths.values.max}"
    puts cycle_lengths[983]
  end
end