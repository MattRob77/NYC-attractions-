require "open-uri"
require "nokogiri"



class Scraper 
   CITYPASS_URL = "https://www.citypass.com/new-york/" 
 
    
def self.scrape_citypass
    
    attraction = []
 
    html = open("https://www.citypass.com/new-york/things-to-do-new-york")
    doc = Nokogiri::HTML(html)
    doc.css("div.sidebar-attraction-nav p").each do |paragraph|  
      attraction = paragraph.css("a").text
      url = paragraph.css("a").attr("href").value
       Attraction.new(attraction,url)
   
     end 
   
    
    end 
   
    def self.scrape_individual_attraction(attraction)
     
      html = open(CITYPASS_URL+attraction.url)
      doc = Nokogiri::HTML(html)
      attraction.highlights = doc.css(".accordion-content.js-accordion-content").text
            attraction.location = doc.css(".indent-block.icon-location").text
      attraction.contact = doc.css(".indent-block.icon-phone").text
      
       
    end 
     
end  
