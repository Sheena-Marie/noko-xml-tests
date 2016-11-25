require 'nokogiri'
require 'open-uri'

nokogiri_object = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/Main_Page'))
sister_projects = nokogiri_object.xpath('//td/b/a')

print 'Wikipedia\'s sister projects are: '

sister_projects.each do |sister_project|
  puts sister_project.to_html
end
