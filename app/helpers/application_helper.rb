module ApplicationHelper
 
 def title 
    base_title = "fake cow | Faux Leather Fashion" 
    if @title.nil? 
      base_title
     else
      "fake cow | #{@title}"
     end
 end

end
