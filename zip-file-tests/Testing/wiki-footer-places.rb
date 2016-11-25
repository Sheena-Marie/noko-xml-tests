require 'nokogiri'
require 'open-uri'

nokogiri_object = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/Main_Page'))
footer_places = nokogiri_object.xpath("//ul[@id= 'footer-places']/li")

footer_places.each do |footer_place|
  puts footer_place.text
end
