class Problem39
  def Problem39.run
    p_max = 1000
    answers = {}

    possible_a_b = (3...p_max).to_a.combination(2).to_a { |a, b| a < b }
    possible_c = (5...p_max).to_a
    possible_combos = []

    for c in possible_c
      pythagorean = possible_a_b.select { |a_b| a_b[1] < c and a_b[0]**2 + a_b[1]**2 == c**2 }
      for a_b in pythagorean
        possible_combos << [a_b[0], a_b[1], c]
      end
      puts c if c % 10 == 0
    end

    (12..p_max).each { |p| answers[p] = possible_combos.select { |x| x[0] + x[1] + x[2] == p }.length }

    puts "Answer: #{answers.invert[answers.values.max]}"
  end
end