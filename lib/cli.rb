#User controller-input 


class CLI 
 
  def run 
    puts "Welcome to NYC top attractions!" #Step 1 Build interaction with the user/Welcomes them, ask for choice.
    puts "Would you like to see the most popular attractions?"
    Scraper.scrape_citypass #Pulls information from scraper class 
    attractions 
    menu 
  end 
  
  
  def attractions #method defined 
       Attraction.all.each.with_index(1) do |attraction, i| #built index to a numbered list 
      puts "#{i} #{attraction.headline}"
      end 
    end 

   
   def menu #method defined 
     puts "Please select a top attraction."  #interacts with user/Ask's user to pick an attraction
     input = gets.chomp #grabs input from the user (index_number)
     attraction = Attraction.all[input.to_i-1] #added -1/computers start from 0 as humans 1 
   
    
     
     if !attraction #made if statement in case the user picked something not on the list 
       puts "Attraction not found. Please select a different attraction."
       menu 
     else 
       Scraper.scrape_individual_attraction(attraction)  #gathers the data from scraper to give individual data
       puts "Here are the details for #{attraction.headline}"
       puts "highlights: #{attraction.highlights}"
       puts "location: #{attraction.location}"
       puts "contact: #{attraction.contact}"
     end 
    end 
end 
