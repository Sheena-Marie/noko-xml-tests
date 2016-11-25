require 'nokogiri'

f = File.open("sherlock.xml")
doc = Nokogiri::XML(f)

expression = "Employees/Employee/firstname"
nodes = doc.xpath(expression)

puts "The first name of all employees"

nodes.each do |node|
  puts node.text
end
