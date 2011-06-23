require("./utils")

class Problem67
  $nums = []
  
  def Problem67.run    
    populate_nums    
    $nums = $nums.reverse
    (0...$nums.length - 1).each do |y|
      (0...$nums[y].length - 1).each do |x|
        if $nums[y][x] > $nums[y][x+1]
          $nums[y+1][x] += $nums[y][x]
        else
          $nums[y+1][x] += $nums[y][x+1]
        end
      end
    end
    
    puts "Answer: #{$nums.reverse[0][0]}"
  end
  
  def Problem67.populate_nums
    $nums = []
    lines = IO.readlines("./data/triangle.txt")
    lines.each do |line|
      $nums << line.split(' ').map{|n| Integer(Utils.strip_leading_zeroes(n))}
    end
  end
end