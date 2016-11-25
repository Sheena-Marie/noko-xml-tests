require 'nokogiri'

f = File.open('testing.xml')
doc = Nokogiri::XML(f)

expression = "/Collection/Name"
nodes = doc.xpath(expression)

nodes.each do |node|
  puts "The document name is: #{ node.text }"
end
