require("./utils")
require("./problem17")

start = Time.now

Problem17.run 1000

puts "Time to execute: #{Time.now - start} s"