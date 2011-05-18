require("./utils")

class Problem33
  def Problem33.run
    numerator = 1
    denominator = 1

    (10..99).each do |x|
      (10..99).each do |y|
        next if x % 10 == 0 and y % 10 == 0
        value = Float(x) / Float(y)
        next if value >= 1

        a = Float(String(x)[0..0])
        b = Float(String(x)[1..1])
        c = Float(String(y)[0..0])
        d = Float(String(y)[1..1])

        good = false

        if b == d and  a / c == value
          good = true
          puts "#{x}/#{y} = #{Integer(a)}/#{Integer(c)}"
        elsif a == d and y % 10 != 0 and b / c == value
          good = true
          puts "#{x}/#{y} = #{Integer(b)}/#{Integer(c)}"
        elsif b == c and y % 10 != 0 and a / d == value
          good = true
          puts "#{x}/#{y} = #{Integer(a)}/#{Integer(d)}"
        elsif a == c and b / d == value
          good = true
          puts "#{x}/#{y} = #{Integer(b)}/#{Integer(d)}"
        end

        if good
          numerator *= x
          denominator *= y
        end
      end
    end

    num_factors = Utils.get_factors numerator
    den_factors = Utils.get_factors denominator
    gcd = (num_factors & den_factors).max
    puts "Answer: #{numerator / gcd}/#{denominator / gcd}"
  end
end