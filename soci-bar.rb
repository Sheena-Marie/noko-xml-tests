require 'nokogiri'
require 'open-uri'

nokogiri_object = Nokogiri::HTML(open('https://en.m.wikipedia.org/wiki/Portal:Anthropology'))
socio_items = nokogiri_object.xpath("//div[@id='sociology_browsebar']/p/a")

puts 'The Sociology Portals are: '
puts "\n"

socio_items.each do |socio_item|
  puts socio_item.text
end
