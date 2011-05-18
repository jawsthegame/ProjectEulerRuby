require("./utils")

class Problem35
  def Problem35.run
    circular_primes = []
    primes = Utils.get_primes(1_000_000)

    primes_to_check = primes.clone
    primes_to_check.each do |p|
      string_p = String(p)
      if string_p.length == 1
        circular_primes << p
      else
        circulars = []
        (0...string_p.length).each do |d|
          next_circular = ""
          (0...string_p.length).each do |i|
            next_circular += string_p[i-d..i-d]
          end
          circulars << Integer(next_circular) if next_circular[0..0] != '0'
        end
        if circulars.all?{|x| primes.include?(x)}
          circular_primes << p
          primes_to_check -= circulars
        end
      end
    end

    puts circular_primes.length
  end
end