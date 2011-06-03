require("./utils")

class Problem42
  def Problem42.run
    words = IO.read("./data/words.txt")[1..-2].split("\",\"")
    triangle_word_count = 0
    words.each do |word|
      sum = 0
      word.downcase.each_byte do |c|
        sum += c - 96
      end
      triangle_word_count += 1 if Utils.is_triangle_number(sum)
    end
    puts "Answer: #{triangle_word_count}"
  end
end