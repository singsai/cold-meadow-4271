module ApplicationHelper
  def logo
    logo = image_tag("verbalizeit.png", alt: "VerbalizeIt", class: "round")  
  end  
  
  def full_title(page_title)
    base_title = "VerbalizeIt"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # add this to app/helpers/application_helper.rb
    def errors_for(object, message=nil)
      html = ""
      unless object.errors.blank?
        html << "<div class='errorExplanation #{object.class.name.humanize.downcase}Errors'>\n"
        if message.blank?
          if object.new_record?
            html << "\t\t<h5>There was a problem creating the #{object.class.name.humanize.downcase}</h5>\n"
          else
            html << "\t\t<h5>There was a problem updating the #{object.class.name.humanize.downcase}</h5>\n"
          end    
        else
          html << "<h5>#{message}</h5>"
        end  
        html << "\t\t<ul>\n"
        object.errors.full_messages.each do |error|
          html << "\t\t\t<li>#{error}</li>\n"
        end
        html << "\t\t</ul>\n"
        html << "\t</div>\n"
      end
      html
    end

    
end
