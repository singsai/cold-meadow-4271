class UserMailer < ActionMailer::Base
  default :from => "info@palmling.com"
  
  def welcome_email(user)
    mail(:to => user.email, :bcc => "info@palmling.com", :subject => "Thank you for Signing up with PalmLing for Skype!", :content_type => "text/html", :body => "Thank you for signing up with <a href='http://www.palmling.com'>PalmLing for Skype</a>. Your Skype name is: #{user.skype} <br/><br/>Once your payment is processed and confirmed, a member of the PalmLing team will follow-up with you with details on how to access our global community of translators. Please allow 1 hour for us to respond to you. <br/><br/>Thank you, <br/><br/>The PalmLing Team, <br/><a href='http://www.palmling.com'>PalmLing<a/>. <br/><br/><a href='http://twitter.com/PalmLing'>PalmLing on Twitter</a><br/><a href='http://www.facebook.com/pages/PalmLing/108198825934073'>PalmLing on Facebook</a>")
  end
end