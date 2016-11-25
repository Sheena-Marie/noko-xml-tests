require 'nokogiri'

f = File.open('sherlock.xml')
doc = Nokogiri::XML(f)

expression = "/Employees/Employee[position() <= 2]/firstname"
nodes = doc.xpath(expression)

nodes.each do |node|
  puts "#{ node.text } is in the first two positions"
end
