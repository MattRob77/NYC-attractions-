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
     input = gets.chomp #grabs input from the user (y,n)
     attraction = Attraction.all[input.to_i-1]
    
     
     if !attraction
       puts "Attraction not found. Please select a different attraction."
       menu 
     else 
       Scraper.scrape_individual_attraction(attraction)
       puts "Here are the details for #{attraction.paragraph}"
       puts "highlights: #{attraction.highlights}"
       puts "location: #{attraction.location}"
       puts "contact: #{attraction.contact}"
     end 
    end 
end 
