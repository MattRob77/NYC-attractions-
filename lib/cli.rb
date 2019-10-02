#User controller-input 

class CLI 
  def run 
  attraction =[]
    puts "Welcome to NYC top attractions!"
    puts "Would you like to see the most popular attractions?"
    puts "Please select a top attraction"
    puts "Sorry, try again"
    puts "Here are the details for #{}"
    puts "Highlights: #{}"
    puts "Location: #{}"
    html = open("https://www.citypass.com/new-york/things-to-do-new-york")
    doc = Nokogiri::HTML(html)
    doc.css("div.sidebar-attraction-nav p").each do |paragraph|  
      attraction << paragraph.css("a").text
     end 
    
    attraction.each.with_index(1) do |attraction, i| #These two lines of code sets the index, making attractions numbered 
      puts "#{i} #{attraction}"  #numbered list 
    end 
  end 
  
end 
