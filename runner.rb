require("./utils")
require("./problem5")

start = Time.now

Problem5.run 10

puts "\nTime to execute: #{Time.now - start} s"