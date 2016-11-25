require 'nokogiri'

f = File.open('sherlock.xml')
doc = Nokogiri::XML(f)

expression = "/Employees/Employee[@type='admin']/firstname"
nodes = doc.xpath(expression)

nodes.each do |node|
  puts "Admin's Name: #{ node.text }"
end
