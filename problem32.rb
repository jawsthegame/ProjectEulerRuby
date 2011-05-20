require("./utils")

class Problem32
  def Problem32.run
    pandigitals = Utils.get_pandigitals(9)
    products = []
    pandigitals.each do |p|
      string_p = String(p)
      part_one = string_p[0..1]
      part_two = string_p[2..4]
      part_three = string_p[5..9]
      if Integer(part_one) * Integer(part_two) == Integer(part_three)
        products << Integer(part_three)
      end
    end
    pandigitals.each do |p|
      string_p = String(p)
      part_one = string_p[0..0]
      part_two = string_p[1..4]
      part_three = string_p[5..9]
      if Integer(part_one) * Integer(part_two) == Integer(part_three)
        products << Integer(part_three)
      end
    end
    puts products.uniq.inject(:+)
  end
end