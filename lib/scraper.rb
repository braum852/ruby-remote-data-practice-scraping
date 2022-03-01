require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css(".heading-40-semibold").text

    courses.each do |course|
    course.text.strip
    end


#ruby lib/scraper.rb