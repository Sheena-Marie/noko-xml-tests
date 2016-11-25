require 'zip'
require 'nokogiri'

zip = Zip::File.open('Testing.zip')
xml_source = zip.read('examplemanifest.xml')

doc = Nokogiri::XML(xml_source)

expression = "/Document/VersionInfo/PublishInfo"
nodes = doc.xpath(expression)

nodes.children.each do |node|
  puts "#{ node.name }: #{ node.text }" if node.class == Nokogiri::XML::Element
end
