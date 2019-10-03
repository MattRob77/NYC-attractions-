#User controller-input 



class CLI 
 
  def run 
    puts "Welcome to NYC top attractions!" #Step 1 
    puts "Would you like to see the most popular attractions?"
    Scraper.scrape_citypass 
    attractions 
    menu 
  end 
  
  
  def attractions 
       Attraction.all.each.with_index(1) do |attraction, i|
      puts "#{i} #{attraction.headline}"
      end 
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
       puts "Here are the details for #{attraction.headline}"
       puts "highlights: #{attraction.highlights}"
       puts "location: #{attraction.location}"
       puts "contact: #{attraction.contact}"
     end 
    end 
end 
