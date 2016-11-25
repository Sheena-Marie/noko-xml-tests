require 'nokogiri'

doc = Nokogiri::XML(File.open("examplemanifest.xml"))
expression = "/Document/VersionInfo/PublishInfo"
nodes = doc.xpath(expression)

nodes.children.each do |node|
  puts "#{node.name}: #{node.text}" if node.class == Nokogiri::XML::Element
end
