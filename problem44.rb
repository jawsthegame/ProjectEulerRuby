require("./utils")

class Problem44
	def Problem44.run
		pentagonals = []
		
		(1..10000).each do |n|
			pentagonals << Utils.get_pentagonal_number(n)
		end
		
		found = false
		
		pentagonals.each_with_index do |p, i|
			pentagonals[i + 1...pentagonals.length].each do |q|
				if Utils.is_pentagonal_number(p + q) and Utils.is_pentagonal_number(q - p)
					found = true
					answer = (q - p).abs
					puts "Answer: #{answer}"					
					break
				end
			end
			break if found
		end
	end
end