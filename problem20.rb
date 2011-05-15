require("./utils")
class Problem20
  def Problem20.run
    fac = Utils.factorial 100
    sum = 0
    String(fac).chars.each do |ch|
      sum += Integer(ch)
    end
    sum
  end
end