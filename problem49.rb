require("./utils")

class Problem49
	def Problem49.run
		primes = Utils.get_primes(9999).select{|p| p > 1000}
		primes.each_with_index do |p, i|
			p_str = p.to_s
			perms = [Integer(p_str[0..0]), Integer(p_str[1..1]), Integer(p_str[2..2]), Integer(p_str[3..3])].permutation(4).to_a.select{|x| x[0] != 0}.collect{|x| Integer(x.join)}.select{|x| x > p && primes.include?(x)}.uniq.sort
			perms[0..-1].each do |q|
				next_num = q + q - p
				answer = "#{p}#{q}#{next_num}"
				puts "Answer: #{p}#{q}#{next_num}" if perms.include?(next_num) && answer != "148748178147"
			end
		end
	end
end