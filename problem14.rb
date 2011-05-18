class Problem14
  $lengths = {}

  def Problem14.run
    max = 1_000_000
    (1...max).each do |n|
      $lengths[n] = get_chain_length(n, 0)
    end
    max_value = $lengths.values.max
    puts $lengths.select{|x| $lengths[x] == max_value}
  end

  def Problem14.get_chain_length n, count
    return count + $lengths[n] if $lengths.has_key? n
    count += 1
    return count if n == 1
    next_n = n.even? ? even(n) : odd(n)
    get_chain_length(next_n, count)
  end

  def Problem14.even n
    n / 2
  end

  def Problem14.odd n
    3 * n + 1
  end
end