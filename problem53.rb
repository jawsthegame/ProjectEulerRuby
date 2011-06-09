require("./utils")

class Problem53
  def Problem53.run
    count = 0
    (1..100).each { |n| (1..n).each { |r| count += 1 if c_r_n(r, n) > 1_000_000 } }
    puts "Answer: #{count}"
  end

  def Problem53.c_r_n r, n
    Utils.factorial(n) / (Utils.factorial(r) * (Utils.factorial(n-r)))
  end
end
