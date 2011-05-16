class Problem19
  # You are given the following information, but you may prefer to do some research for yourself.

  #    * 1 Jan 1900 was a Monday.
  #    * Thirty days has September,
  #      April, June and November.
  #      All the rest have thirty-one,
  #      Saving February alone,
  #      Which has twenty-eight, rain or shine.
  #      And on leap years, twenty-nine.
  #    * A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

  # How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

  def Problem19.run
    day_count = 0
    sunday_count = 0
    (1901..2000).each do |year|
      (1..31).each do |jan|
        day_count += 1
        sunday_count += 1 if jan == 1 && day_count % 7 == 0
      end
      feb_days = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 ? 29 : 28
      (1..feb_days).each do |feb|
        day_count += 1
        sunday_count += 1 if feb == 1 && day_count % 7 == 0
      end
      (1..31).each do |mar|
        day_count += 1
        sunday_count += 1 if mar == 1 && day_count % 7 == 0
      end
      (1..30).each do |apr|
        day_count += 1
        sunday_count += 1 if apr == 1 && day_count % 7 == 0
      end
      (1..31).each do |may|
        day_count += 1
        sunday_count += 1 if may == 1 && day_count % 7 == 0
      end
      (1..30).each do |jun|
        day_count += 1
        sunday_count += 1 if jun == 1 && day_count % 7 == 0
      end
      (1..31).each do |jul|
        day_count += 1
        sunday_count += 1 if jul == 1 && day_count % 7 == 0
      end
      (1..31).each do |aug|
        day_count += 1
        sunday_count += 1 if aug == 1 && day_count % 7 == 0
      end
      (1..30).each do |sep|
        day_count += 1
        sunday_count += 1 if sep == 1 && day_count % 7 == 0
      end
      (1..31).each do |oct|
        day_count += 1
        sunday_count += 1 if oct == 1 && day_count % 7 == 0
      end
      (1..30).each do |nov|
        day_count += 1
        sunday_count += 1 if nov == 1 && day_count % 7 == 0
      end
      (1..31).each do |dec|
        day_count += 1
        sunday_count += 1 if dec == 1 && day_count % 7 == 0
      end
    end
    sunday_count
  end
end