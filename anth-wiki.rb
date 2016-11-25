require 'nokogiri'
require 'open-uri'

nokogiri_object = Nokogiri::HTML(open('https://en.m.wikipedia.org/wiki/Portal:Anthropology'))
cat_things = nokogiri_object.xpath("//div[@class='CategoryTreeChildren']/div/div/a")

puts 'Is this thing working?'
puts cat_things.length
puts "\n"

cat_things.each do |cat_thing|
  puts cat_thing.text

end
