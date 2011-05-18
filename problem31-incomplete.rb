class Problem31
  def Problem31.run
    coins = [200, 100, 50, 20, 10, 5, 2, 1]
    target = 37
    options = {1=>0, 2=>0, 5=>0, 10=>0, 20=>0, 50=>0, 100=>0, 200=>0}

    amount_left = target

    while amount_left > 0
      coins.each do |c|
        if c <= amount_left
          amount_left -= c
          options[c] += 1
          break
        end
      end
    end
    options
  end

  def Problem31.run2
    good = []
    (0..200).each do |a|
      (0..100).each do |b|
        (0..40).each do |c|
          (0..20).each do |d|
            (0..10).each do |e|
              (0..4).each do |f|
                (0..2).each do |g|
                  (0..1).each do |h|
                    if a + b*2 + c*5 + d*10 + e*20 + f*50 + g*100 + h*200 == 200
                      good << {1=>a, 2=>b, 5=>c, 10=>d, 20=>e, 50=>f, 100=>g, 200=>h}
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    good.length
  end
end