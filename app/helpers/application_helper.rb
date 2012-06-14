module ApplicationHelper
  def logo
    logo = image_tag("palmling.png", alt: "PalmLing", class: "round")  
  end  
  
  def full_title(page_title)
    base_title = "PalmLing"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
    
end
