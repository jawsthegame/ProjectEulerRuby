require("./utils")

class Problem38
  def Problem38.run
    products = []
    (1..10000).each do |x|
      next if x % 10 == 0
      product = ""
      (1..10000).each do |n|
        product += String(x * n)
        break if Integer(product) > 987654321
        if product.length == 9
          if (1..9).all? { |d| product.include?("#{d}") }
            products << Integer(product)
          end
        end
      end
    end
    puts products.max
  end
end