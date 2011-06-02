require("./utils")

class Problem17
  $number_lookup = { 
    "1" => "one", 
    "2" => "two", 
    "3" => "three", 
    "4" => "four", 
    "5" => "five", 
    "6" => "six", 
    "7" => "seven", 
    "8" => "eight", 
    "9" => "nine", 
    "10" => "ten", 
    "11" => "eleven", 
    "12" => "twelve", 
    "13" => "thirteen", 
    "14" => "fourteen", 
    "15" => "fifteen", 
    "16" => "sixteen", 
    "17" => "seventeen", 
    "18" => "eighteen", 
    "19" => "nineteen", 
    "20" => "twenty", 
    "30" => "thirty", 
    "40" => "forty", 
    "50" => "fifty", 
    "60" => "sixty", 
    "70" => "seventy", 
    "80" => "eighty", 
    "90" => "ninety", 
    "100" => "hundred", 
    "1000" => "thousand"
  }
  
  def Problem17.run
    sum = 0
    (1..1000).each{|n| sum += get_text(n, "", false).length}
    puts sum
  end
  
  def Problem17.get_text n, text, add_and
    if n >= 1000 && n < 10000
      text += $number_lookup["#{n.to_s[0]}"] + "thousand"
      if (n % 1000 != 0)
        get_text(Integer(Utils.strip_leading_zero(n.to_s[1..3])), text, true)
      else
        return text
      end
    elsif n >= 100
      text += $number_lookup["#{n.to_s[0]}"] + "hundred"
      if (n % 100 != 0)
        get_text(Integer(Utils.strip_leading_zero(n.to_s[1..2])), text, true)
      else
        return text
      end
    elsif n > 20
      text += (add_and ? "and" : "") + $number_lookup["#{n.to_s[0]}0"]
      if n % 10 != 0
        get_text(Integer(Utils.strip_leading_zero(n.to_s[1])), text, false)
      else
        return text
      end
    else
      text += (add_and ? "and" : "") + $number_lookup[n.to_s]
      return text
    end
  end
end