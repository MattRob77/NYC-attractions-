require "open-uri"
require "nokogiri"


class Scraper 
  
  def self.scrape_citypass
    html = open("https://www.citypass.com/new-york/things-to-do-new-york")
    doc = Nokogiri::HTML(html)
    doc.css("div.sidebar-attraction-nav p").each do |paragraph|  
      attraction << paragraph.css("a").text
     end 
    puts attraction 
  end 

end 
