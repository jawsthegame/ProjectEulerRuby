class Problem33
  def Problem33.run
    (10..99).each do |x|
      (10..99).each do |y|
        next if x % 10 == 0 and y % 10 == 0
        value = x / y

        a = String(x)[0]
        b = String(x)[1]
        c = String(y)[0]
        d = String(y)[1]

        if Integer(a) / Integer(c) == value
          puts "#{a}/#{c}"
        elsif y % 10 != 0 and Integer(b) / Integer(c) == value
          puts "#{b}/#{c}"
        elsif y % 10 != 0 and Integer(a) / Integer(d) == value
          puts "#{a}/#{d}"
        elsif Integer(String(x)[1]) / Integer(d) == value
          puts "#{b}/#{d}"
        end
      end
    end
  end
end