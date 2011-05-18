require("./utils")

class Problem12
  def Problem12.run
    n = 500
    triangle_num = 0
    (1..Utils::Infinity).each do |x|
      triangle_num += x
      if Utils.get_factors(triangle_num).length > n
        puts triangle_num
        break
      end
    end
  end
end