class Problem17
  def Problem17.run n
    all_nums_string = ""
    (1..n).each do |x|
      string_x = String(x)
      #all_nums_string +=
      puts get_number_text string_x, string_x, ""
    end
    puts all_nums_string.length
  end

  def Problem17.get_number_text num_as_string, string_part, current_string

    if string_part.length == 2 && string_part.chars.first != '0' && Integer(string_part) < 20
      current_string += "and"
      current_string += "ten" if string_part == "10"
      current_string += "eleven" if string_part == "11"
      current_string += "twelve" if string_part == "12"
      current_string += "thirteen" if string_part == "13"
      current_string += "fourteen" if string_part == "14"
      current_string += "fifteen" if string_part == "15"
      current_string += "sixteen" if string_part == "16"
      current_string += "seventeen" if string_part == "17"
      current_string += "eighteen" if string_part == "18"
      current_string += "nineteen" if string_part == "19"
      return current_string
    else
      if string_part.length == 2
        case string_part.chars.first
          when '2'
            current_string += "twenty"
          when '3'
            current_string += "thirty"
          when '4'
            current_string += "forty"
          when '5'
            current_string += "fifty"
          when '6'
            current_string += "sixty"
          when '7'
            current_string += "seventy"
          when '8'
            current_string += "eighty"
          when '9'
            current_string += "ninety"
        end
      else
        current_string += "and"
        current_string += "one"  if string_part.chars.first == "1"
        current_string += "two" if string_part.chars.first == "2"
        current_string += "three" if string_part.chars.first == "3"
        current_string += "four" if string_part.chars.first == "4"
        current_string += "five" if string_part.chars.first == "5"
        current_string += "six" if string_part.chars.first == "6"
        current_string += "seven" if string_part.chars.first == "7"
        current_string += "eight" if string_part.chars.first == "8"
        current_string += "nine" if string_part.chars.first == "9"
        current_string += "ten" if string_part.chars.first == "10"
      end
    end

    case string_part.length
      when 4
        current_string += "thousand"
      when 3
        current_string += "hundred"
    end

    if string_part.length == 1
      return current_string
    end

    get_number_text num_as_string, string_part[1...num_as_string.length], current_string
  end
end