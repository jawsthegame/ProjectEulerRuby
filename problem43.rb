require("./utils")

class Problem43
	def Problem43.run
    good_ones = []
    pandigitals = Utils.get_pandigitals(0, 9)
    pandigitals.each do |x|
      good_ones << x if check(x)
    end
    puts "Answer: #{good_ones.inject(:+)}"
	end
  
  def Problem43.check x
    str_x = x.to_s
    return false if Integer(Utils.strip_leading_zero(str_x[1..3])) % 2 != 0
    return false if Integer(Utils.strip_leading_zero(str_x[2..4])) % 3 != 0
    return false if Integer(Utils.strip_leading_zero(str_x[3..5])) % 5 != 0
    return false if Integer(Utils.strip_leading_zero(str_x[4..6])) % 7 != 0
    return false if Integer(Utils.strip_leading_zero(str_x[5..7])) % 11 != 0
    return false if Integer(Utils.strip_leading_zero(str_x[6..8])) % 13 != 0
    return false if Integer(Utils.strip_leading_zero(str_x[7..9])) % 17 != 0
    true
  end
end