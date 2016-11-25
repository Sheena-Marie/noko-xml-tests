require 'nokogiri'
require 'open-uri'

nokogiri_object = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/Main_Page'))
wiki_langs = nokogiri_object.xpath("//li/a/span")

print 'Languages available on Wikipedia: '

wiki_langs.each do |wiki_lang|
  puts wiki_lang.text
end
