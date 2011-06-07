require("./utils")

class Problem37
  def Problem37.run
		primes = Utils.get_primes(1000000)
		non_primes = [1, 4, 6, 8, 9]
		
		truncatable_primes = []
		
		primes_to_check = primes.select{ \
			|p| p > 10 	\
			and not p.to_s.chars.include?('0') \
			and not p.to_s.chars.to_a[1..-1].include?('2') \
			and not p.to_s.chars.to_a[1..-1].include?('4') \
			and not p.to_s.chars.to_a[1..-1].include?('5') \
			and not p.to_s.chars.to_a[1..-1].include?('6') \
			and not p.to_s.chars.to_a[1..-1].include?('8') \
			and not non_primes.include?(Integer(p.to_s[0..0])) \
			and not non_primes.include?(Integer(p.to_s[-1..-1])) \
		}
		
		primes_to_check.select{|p| p > 10}.each do |p|
			p_str = p.to_s
			found = true
			
			count = 1						
			while count < p_str.length
				sub_num = p_str[count..-1]
				if sub_num[0..0] == "0" or not primes.include?(Integer(sub_num))
					found = false
					break
				end
				count += 1
			end
			
			next if not found
			
			count = 0
			while count < p_str.length
				sub_num = p_str[0..-count]
				if not primes.include?(Integer(sub_num))
					found = false
					break
				end
				count += 1
			end
			
			truncatable_primes << p if found
			if truncatable_primes.length == 11
				puts "Answer: #{truncatable_primes.inject(:+)}"
				break
			end
		end
  end
end