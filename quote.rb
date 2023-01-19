#!/usr/bin/ruby
require 'json'

# https://raw.githubusercontent.com/mubaris/motivate/master/motivate/data_unique/unique_quotes.json
file = File.read("#{__dir__}/data.json")
data_hash = JSON.parse(file)

begin
  data = data_hash["data"].sample
  quote = data["quote"]
  author = data["author"]
end while quote.length > 100

puts "#{author}: #{quote}"
