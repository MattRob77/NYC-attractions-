require "open-uri"
require "nokogiri"



class Attraction 
  
  attr_accessor :headline, :url, :contact, :location, :highlights
   @@all = []
 
  
  def initialize(headline,url)
    @headline = headline
    @url = url 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 
