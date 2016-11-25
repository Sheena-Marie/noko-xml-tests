require 'nokogiri'
require 'open-uri'

# setting up where to get the information from
html_data = open('http://web.archive.org/web/20090220003702/http://www.sitepoint.com/').read

# Creates a new Nokogiri OBJECT. This loads the data into nokogiri.
nokogiri_object = Nokogiri::HTML(html_data)

# we ask our Nokogiri object to give the HTML element MATCHES (if any) of the provided expression.
tagcloud_elements = nokogiri_object.xpath("//ul[@class='tagcloud']/li/a")


# take those 'tagcloud' elements and loop through them.
tagcloud_elements.each do |tagcloud_element|
  # put them to the screen.
  puts tagcloud_element.text
end


# A shortcut version of the first to lines:
# nokogiri_object = Nokogiri::HTML(open(http://web.archive.org/web/20090220003702/http://www.sitepoint.com/))

#this line: tagcloud_elements = nokogiri_object.xpath("//ul[@class= 'tagcloud']/li/a")
#could be re-written as: nokogiri_object.css("ul.tagcloud > li > a")
