require("./utils.rb")
require("BigDecimal")

class Problem56
  def Problem56.run
    results = []
  
    (1..100).each do |i|
      (1..100).each do |j|
        result = BigDecimal.new("#{i}") ** j
        sum = 0
        result.to_s("F").chars.to_a[0..-3].each{|c| sum += Integer(c)}
        results << sum
      end
    end
    
    puts results.max
  end
end