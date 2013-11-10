module ApplicationHelper
 
 def title 
    base_title = "fake cow | Animal Free Fashion" 
    if @title.nil? 
      base_title
     else
      "fake cow | #{@title}"
     end
 end

   def metacontent 
    base_description = "Fake Cow - Discover and shop one of the largest collection of animal-free product!" 
    if @description.nil?
      base_description
    else
      "#{@description}"
    end
  end 

end
