require("./utils")

class Problem40
  def Problem40.run
    num_string = ""
    (1..Constants::INFINITY).each do |x|
      break if num_string.length > 1_000_000
      num_string += x.to_s
    end
    answer = digit_at(num_string, 1) * digit_at(num_string, 10) * digit_at(num_string, 100) * digit_at(num_string, 1000) * digit_at(num_string, 10000) * digit_at(num_string, 100000) * digit_at(num_string, 1000000)
    puts "Answer: #{answer}"
  end

  def Problem40.digit_at num_string, n
    Integer(num_string[n - 1..n - 1])
  end
end