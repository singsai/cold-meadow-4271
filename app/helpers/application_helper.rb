module ApplicationHelper
  def logo
    logo = image_tag("palmling.png", alt: "pling", class: "round")  
  end  
  
  def full_title(page_title)
    base_title = "pling"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
    
end
