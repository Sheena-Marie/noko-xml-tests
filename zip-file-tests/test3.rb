require 'zip'
require 'nokogiri'

zip = Zip::File.open('buggy.zip')
xml_source = zip.read('examplemanifest-buggy.xml')

doc = Nokogiri::XML(xml_source)

expression = "Document/VersionInfo/PublishInfo"
nodes = doc.xpath(expression)

nodes.children.each do |node|
  puts "#{ node.name }: #{ node.text }" if node.class == Nokogiri::XML::Element
end

# This should fail as I'm trying to test what would happen with a buggy xml file.


=begin

So far:

Misnaming the file (i.e .xmsl intead of .xml)
  - Error message in the terminal.
  - (get_entry: no such file or directory)...(Errno::ENOENT)

Change closing tag -> no problem. Prints as normal.

Change the name of one of the child nodes (i.e from PublishInfo to Publish).
  - Nothing prints to Terminal

Take out the name of one of the child nodes.
  - Nothing prints to Terminal.
  
=end
