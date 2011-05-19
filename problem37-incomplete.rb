require("./utils")

class Problem37
  def Problem37.run
    primes = Utils.get_primes(10_000).select { |p| p > 10 }
    primes.each do |p|
      if p > 3790 and p < 3800
        puts "test"
      end
      string_p = String(p)
      (1...string_p.length).each do |i|
        if not primes.include?(Integer(string_p[i...string_p.length].sub(/^0+/, "")))
          primes.delete(p)
          break
        end
      end
    end
    #p primes
  end
end