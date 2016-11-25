require 'nokogiri'

f = File.open('testing.xml')
doc = Nokogiri::XML(f)

expression = "/Collection/Items/Item[@filename='AGC_1164.jpg']/Keywords/Keyword"
nodes = doc.xpath(expression)

nodes.each do |node|
  puts "#{ node.name} #{ node.text }"
end
