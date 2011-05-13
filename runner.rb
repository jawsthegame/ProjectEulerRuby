require("./utils")
require("./problem16")

start = Time.now

Problem16.run 1000

puts "Time to execute: #{Time.now - start} s"