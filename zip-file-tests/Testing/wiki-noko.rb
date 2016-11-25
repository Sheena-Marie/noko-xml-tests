require 'nokogiri'
require 'open-uri'

nokogiri_object = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/Main_Page'))
wiki_elements = nokogiri_object.xpath('//tr/td/ul/li')

wiki_elements.each do |wiki_element|
  puts wiki_element.text
end
