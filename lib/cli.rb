require "open-uri"
require "nokogiri"
require "pry"



def run 
  attractions = [] 
  puts "Welcome to NYC top attractions!"
  puts "Would you like to see the most popular attractions?"
  html = open("https://www.citypass.com/new-york/things-to-do-new-york")
  doc = Nokogiri::HTML(html)
  doc.css(".sidebar-attraction-nav").css("p").each do |attraction|
    binding.pry
  end 
 end

