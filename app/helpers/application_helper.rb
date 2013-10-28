module ApplicationHelper
 
 def title 
    base_title = "fake cow | Faux Leather Fashion" 
    if @title.nil? 
      base_title
     else
      "fake cow | #{@title}"
     end
 end

   def metacontent 
    base_description = "Fake Cow - Discover and shop one of the largest collection of faux leather products in the world." 
    if @description.nil?
      base_description
    else
      "#{@description}"
    end
  end 

end
