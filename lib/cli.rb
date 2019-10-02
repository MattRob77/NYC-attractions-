#User controller-input 
require "open-uri" 
require "nokogiri"

class CLI 
  def run 
    puts "Welcome to NYC top attractions!"
    puts "Would you like to see the most popular attractions?"
    puts "Please select a top attraction"
    puts "Sorry, try again"
    puts "Here are the details for #{}"
    puts "Highlights: #{}"
    puts "Location: #{}"
    Scraper.scrape_citypass 
   end 
  
end  
