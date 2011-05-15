class Problem22
  def Problem22.get_name_score name
    sum = 0
    name.chars.each { |ch| sum += (ch[0] - 64) }
    sum
  end

  def Problem22.run
    file_contents = File.read("./data/names.txt")

    sum = 0
    names = file_contents[1...file_contents.length - 1].split(/","/).sort
    names.each_index{|i| sum += get_name_score(names[i]) * (i + 1) }

    sum
  end
end