require 'nokogiri'
require 'open-uri'

nokogiri_object = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/Portal:Arts'))
browse_bars = nokogiri_object.xpath("//div[@id='portals-browsebar']/dl/dd")

print 'The Topics on the browse bar are: '

puts "\n"

browse_bars.each do |browse_bar|
  puts browse_bar.text
end
