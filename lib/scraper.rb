require "open-uri"  #data gems 
require "nokogiri"



class Scraper #defined class Scraper 
   CITYPASS_URL = "https://www.citypass.com/new-york/" #passed in variable 
 
    
def self.scrape_citypass #defined method 
    
    attraction = [] #empty array 
 
    html = open("https://www.citypass.com/new-york/things-to-do-new-york") #main webpage scrapped from 
    doc = Nokogiri::HTML(html) 
    doc.css("div.sidebar-attraction-nav p").each do |paragraph|  #css that had the paragraph data 
      attraction = paragraph.css("a").text #added the (a)nchor css selecter equal to attraction 
      url = paragraph.css("a").attr("href").value 
       Attraction.new(attraction,url) 
   
     end 
   
    
    end 
   
    def self.scrape_individual_attraction(attraction) #defined method for second scraper class to pull indivdual data 
     
      html = open(CITYPASS_URL+attraction.url)
      doc = Nokogiri::HTML(html)
      attraction.highlights = doc.css(".accordion-content.js-accordion-content")[0].text
            attraction.location = doc.css(".indent-block.icon-location").text
      attraction.contact = doc.css(".indent-block.icon-phone").text
      
       
    end 
     
end
