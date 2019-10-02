#User controller-input 


class CLI 
 
  def run 
    puts "Welcome to NYC top attractions!"
    puts "Would you like to see the most popular attractions?"
    Scraper.scrape_citypass 
    menu 
  end 

   
   def menu 
     puts "Please select a top attraction."
     input = gets.chomp 
     attraction = Attraction.all[input.to_i-1]
    
     
     
     if !attraction
       puts "Sorry, attraction not found."
       menu 
     else 
       Scraper.scrape_individual_attraction(attraction)
     end 
    end 
end 
