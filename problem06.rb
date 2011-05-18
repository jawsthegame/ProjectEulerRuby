class Problem06
  def Problem06.run
    max = 100

    sum_of_squares = 0
    (1..max).each do |n|
      sum_of_squares += n ** 2
    end

    sum = 0
    (1..max).each do |n|
      sum += n
    end

    square_of_sums = sum ** 2


    p square_of_sums - sum_of_squares
  end
end