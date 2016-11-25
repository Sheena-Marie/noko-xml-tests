require 'nokogiri'

f = File.open('sherlock.xml')
doc = Nokogiri::XML(f)

expression = ("/Employees/Employee[@id='2222']")
nodes = doc.xpath(expression)

nodes.children.each do |node|
  puts "#{ node.name }: #{ node.text }" if node.class == Nokogiri::XML::Element
end
