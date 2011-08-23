require("./utils.rb")

class Problem55
  def Problem55.run
    count = 0
    (1...10000).each do |x|
      num = x
      found = false
      (1..50).each do |i|
        num += Utils.get_reverse(num)
        if Utils.is_palindrome(num)
          found = true
          break
        end
      end
      count += 1 if not found
    end
    puts "Lychrels: #{count}"
  end
end