require("./utils")

class Problem30
  def Problem30.run
    power = 5
    min = 2**power
    nums = []

    (min..Constants::INFINITY).each do |x|
      sum = 0
      String(x).chars.each do |ch|
        sum += Integer(ch)**power
      end
      break if x > 1000000
      nums << x if sum == x
    end

    nums.inject(:+)
  end
end