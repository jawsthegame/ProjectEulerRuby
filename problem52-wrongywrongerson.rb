require ("./utils")

class Problem52
  def Problem52.run
    nums = (1..1_000_000).to_a
    already_checked = []
    
    nums.each do |x|
      #puts x if x % 10000 == 0
      next if (6 * x).to_s.length > x.to_s.length
      next if not x.to_s.chars.any?{|d| d == "5" || d == "0"}
      next if not x.to_s.chars.any?{|d| Integer(d) % 2 == 0}
      chars = x.to_s.chars.to_a      
      perms = chars.permutation(chars.length).map{|p| Integer(Utils.strip_leading_zeroes(p.join))}
      next if perms.any?{|p| p % 6 != 0}
      next if perms.any?{|p| p % 5 != 0}
      next if perms.any?{|p| p % 4 != 0}
      next if perms.any?{|p| p % 3 != 0}
      
      puts x
      
      if perms.include?(6*x) and perms.include?(5*x) and perms.include?(4*x) and perms.include?(3*x) and perms.include(2*x)
        puts "Weee: #{x}, #{2*x}"
        break
      end
    end
  end
end