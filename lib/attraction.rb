require "open-uri"
require "nokogiri"


class Attraction 
  
  attr_accessor :headline, :url 
   @@all = []
 
  
  def initialize(headline, url)
    @headline = headline 
    @url = url 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 
