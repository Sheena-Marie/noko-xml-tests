require 'nokogiri'

f = File.open('sherlock.xml')
doc = Nokogiri::XML(f)

expression = "/Employees/Employee[age>40]/firstname"
nodes = doc.xpath(expression)

nodes.each do |node|
  puts "#{ node.text } is over 40!"
end
