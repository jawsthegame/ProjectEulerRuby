class Problem15
  def Problem15.run
    size = 20
    pascal = []

    first_row = []
    (size + 1).times { first_row << 1 }
    pascal << first_row
    (1..size).each do |y|
      row = [1]
      (1..size).each do |x|
        row << pascal[y - 1][x] + row[x - 1]
      end
      pascal << row
    end
    pascal[size][size]
  end
end