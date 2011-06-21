require ("./utils")

class Problem18
  $nums = []
  $nums << [75]
  $nums << [95, 64]
  $nums << [17, 47, 82]
  $nums << [18, 35, 87, 10]
  $nums << [20, 4, 82, 47, 65]
  $nums << [19, 1, 23, 75, 3, 34]
  $nums << [88, 2, 77, 73, 7, 63, 67]
  $nums << [99, 65, 4, 28, 6, 16, 70, 92]
  $nums << [41, 41, 26, 56, 83, 40, 80, 70, 33]
  $nums << [41, 48, 72, 33, 47, 32, 37, 16, 94, 29]
  $nums << [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14]
  $nums << [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57]
  $nums << [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48]
  $nums << [63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31]
  $nums << [4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]

  def Problem18.run
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
end