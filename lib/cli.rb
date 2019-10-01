require "open-uri"
require "nokogiri"


def run 
  puts "Welcome to NYC top attractions!"
  puts "What would you like to do?"
  html = open("https://www.nycgo.com/")
  doc = Nokogiri::HTML(html)

end 
