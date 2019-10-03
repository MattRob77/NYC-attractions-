require "open-uri"
require "nokogiri"



class Attraction 
  
  attr_accessor :headline, :url, :contact, :location, :highlights #attribute accessor 
   @@all = [] #all to empty array 
 
  
  def initialize(headline,url) #initialize method with headline, url argument 
    @headline = headline
    @url = url 
    @@all << self #shoveled self = method into @@all 
  end 
  
  def self.all 
    @@all 
  end 
end 

