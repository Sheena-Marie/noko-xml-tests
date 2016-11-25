require 'nokogiri'

f = File.open('testing.xml')
doc = Nokogiri::XML(f)

expression = "/Collection/Items/Item[position() <= 1]"
nodes = doc.xpath(expression)

nodes.children.each do |node|
  puts "#{ node.name }: #{ node.text }" if node.class == Nokogiri::XML::Element
end
