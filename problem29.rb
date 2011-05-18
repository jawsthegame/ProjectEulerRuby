class Problem29
  def Problem29.run
    min = 2
    max = 100
    nums = []
    (min..max).each do |a|
      (min..max).each do |b|
        nums << a**b
      end
    end
    nums.uniq.length
  end
end