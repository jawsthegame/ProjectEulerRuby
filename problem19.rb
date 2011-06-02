require("Date")

class Problem19
  def Problem19.run
    first_of_month_sundays = []
    (1901..2000).each do |y|
      (1..12).each do |m|
        this_date = Date.new(y, m, 1)
        first_of_month_sundays << this_date if this_date.wday == 0
      end
    end
    puts first_of_month_sundays.length    
  end
end