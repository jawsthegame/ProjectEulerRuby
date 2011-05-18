require("./utils")

class Problem34
  def Problem34.run
    factorials = {
        1=>1,
        2=>Utils.factorial(2),
        3=>Utils.factorial(3),
        4=>Utils.factorial(4),
        5=>Utils.factorial(5),
        6=>Utils.factorial(6),
        7=>Utils.factorial(7),
        8=>Utils.factorial(8),
        9=>Utils.factorial(9),
        10=>Utils.factorial(10),
    }

    results = {}

    (3..9999999).each do |n|
      results[n] = []
      string_n = String(n)
      sum = 0
      (0...string_n.length).each do |i|
        x = Integer(string_n[i..i])
        if x > 0
          fac = factorials[x]
          sum += fac
          results[n] << fac
        end
      end
      if n == sum
        p results[n]
        puts n
      end
    end
  end
end