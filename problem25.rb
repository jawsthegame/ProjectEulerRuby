require("./utils")

class Problem25
  def Problem25.run
    prev_num = 1
    current_num = 1
    (1..Constants::INFINITY).each do |i|
      return i if prev_num.to_s.chars.count == 1000
      next_num = prev_num + current_num
      prev_num = current_num
      current_num = next_num
    end
  end
end