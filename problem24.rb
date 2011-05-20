class Problem24
  def Problem24.run
    puts (0..9).to_a.permutation(10).to_a[999_999].join
  end
end