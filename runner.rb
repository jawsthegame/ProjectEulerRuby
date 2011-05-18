while 1
  puts "Problem #: "
  problem_number = gets.chomp()
  if problem_number == ""
    exit
  end

  require("./utils")
  if true
    require("./problem#{problem_number}")
  end

  start = Time.now

  problem = Object::const_get("Problem#{problem_number}")

  puts
  problem.run
  puts
  puts "Time to execute: #{Time.now - start} s"
  puts
end