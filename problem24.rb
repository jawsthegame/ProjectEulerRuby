class Problem24
  def Problem24.run
    digits = (0..9).to_a
    perm = digits.permutation(10).to_a[999_999]
    result = ""
    for d in perm
      result += String(d)
    end
    puts result
  end
end