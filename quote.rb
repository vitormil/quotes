#!/usr/bin/ruby
require 'json'

color = false
ARGV.each do|a|
  color = true if a == "--color"
end

# https://raw.githubusercontent.com/mubaris/motivate/master/motivate/data_unique/unique_quotes.json
file = File.read("#{__dir__}/data.json")
data_hash = JSON.parse(file)

begin
  data = data_hash["data"].sample
  quote = data["quote"]
  author = data["author"]
end while quote.length > 100

if color
  puts "\033[1;33m#{author}\033[1;30m:\033[0m \033[34m#{quote} \033[0m"
else
  puts "#{author}: #{quote}"
end
