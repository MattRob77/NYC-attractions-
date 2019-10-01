require "open-uri"
require "nokogiri"
require "pry"



def run 
  attractions = [] 
  puts "Welcome to NYC top attractions!"
  puts "Would you like to see the most popular attractions?"
  puts "Please select a top attraction"
  puts "Sorry, try again"
  puts "Here are the details for #{}:"
  puts "Highlights: #{}"
  puts "Location: #{}"
  puts "Amenities: #{}"
  html = open("https://www.citypass.com/new-york/things-to-do-new-york")
  doc = Nokogiri::HTML(html)
  doc.css(".sidebar-attraction-nav").css("p").each do |a|
   binding.pry
   end 
end 

