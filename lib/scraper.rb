require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("https://flatironschool.com/"))
puts doc.css(".site-logo_logo-light").text.strip

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
  puts course.text.strip
end
