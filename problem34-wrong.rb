require("./utils")

class Problem34
  def Problem34.run
    factorials = {
				0=>0,
        1=>1,
        2=>Utils.factorial(2),
        3=>Utils.factorial(3),
        4=>Utils.factorial(4),
        5=>Utils.factorial(5),
        6=>Utils.factorial(6),
        7=>Utils.factorial(7),
        8=>Utils.factorial(8),
        9=>Utils.factorial(9),
        10=>Utils.factorial(10),
    }
		
    (3..factorials[10]).each do |n|
      sum = 0
			n.to_s.chars.to_a.each do |c|
				break if sum > n
				sum += factorials[get_integer(c)]
			end
			puts n if n == sum
    end
  end
		
	def Problem34.get_integer ch
		ch == "0" ? 0 : Integer(ch)
	end
end