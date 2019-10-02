require "open-uri"
require "nokogiri"




def run 
  array = []
  puts "Welcome to NYC top attractions!"
  puts "Would you like to see the most popular attractions?"
  puts "Please select a top attraction"
  puts "Sorry, try again"
  puts "Here are the details for #{}"
  puts "Highlights: #{}"
  puts "Location: #{}"
  html = open("https://www.citypass.com/new-york/things-to-do-new-york")
  doc = Nokogiri::HTML(html)
  doc.css("div.sidebar-attraction-nav p").each do |paragraph|  
    array << paragraph.css("a").text
  end 
  puts array
end 

