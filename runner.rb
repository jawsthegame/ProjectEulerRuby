require("./utils")
require("./problem15")

start = Time.now

p Problem15.run 20

puts "Time to execute: #{Time.now - start} s"