require "open-uri"
require "nokogiri"
require "pry"


class Attraction 
  
  attr_accessor :headline, :url, :headline, :location, :contact
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
