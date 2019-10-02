require "open-uri"
require "nokogiri"
require "pry" 

class Scraper 
   citypass_URL = "https://www.citypass.com/new-york/things-to-do-new-york"
 
    
def self.scrape_citypass
    
    attraction = []
 
    html = open("https://www.citypass.com/new-york/things-to-do-new-york")
    doc = Nokogiri::HTML(html)
    doc.css("div.sidebar-attraction-nav p").each do |paragraph|  
      attraction << paragraph.css("a").text
     end 
   
     attraction.each.with_index(1) do |attraction, i|
      puts "#{i} #{attraction}"
      end 
    end 
   
    def self.scrape_individual_attraction(attraction)
      html = open(citypass_URL+attraction.url)
      doc = Nokogiri::HTML(html)
      binding.pry
      attraction.highlights = doc.css(".accordion-content js-accordion-content").text.split("\n")[1].strip 
      attraction.location = doc.css("indent-block icon-location").text.split("\n")[1].strip 
      attraction.contact = doc.css("indent-block icon-phone").text.split("\n")[1].strip 
    end 
     
end 
