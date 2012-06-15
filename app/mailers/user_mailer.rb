class UserMailer < ActionMailer::Base
  default :from => "info@palmling.com"
  
  def welcome_email(user)
    mail(:to => user.email, :bcc => "info@palmling.com", :subject => "Thank you for Signing up with PalmLing for Skype!", :content_type => "text/html", :body => "Thank you for signing up with <a href='http://www.palmling.com'>PalmLing for Skype</a>. Your Skype name is: #{user.skype} <br/><br/>Once your payment is processed and confirmed, a member of the PalmLing team will follow-up with you with details on how to access our global community of translators. Please allow 1 hour for us to respond to you. <br/><br/>Thank you, <br/><br/>The PalmLing Team, <br/><a href='http://www.palmling.com'>PalmLing<a/>. <br/><br/><span><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></span><span>PalmLing on Twitter</span><br/><a href='http://www.facebook.com/pages/PalmLing/108198825934073'><img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span>PalmLing on FaceBook</span>")
  end

  def test_email(user)
      mail(:to => 'maxswell@gmail.com', :bcc => "nick@palmling.com", :subject => "Thank you for Signing up with PalmLing for Skype!", :content_type => "text/html",
       :body => "Thank you for signing up with <a href='http://www.palmling.com'>PalmLing for Skype</a>. Your Skype name is: Kevin <br/>
       <br/>Once your payment is processed and confirmed, a member of the PalmLing team will follow-up with you with details on how to
       access our global community of translators. Please allow 1 hour for us to respond to you. <br/><br/>Thank you, <br/><br/>
       The PalmLing Team, <br/><a href='http://www.palmling.com'>PalmLing<a/>. <br/><br/>
       <a href='https://twitter.com/#!/palmling'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/palmling'>PalmLing on Twitter</a><br/>
       <a href='http://www.facebook.com/pages/PalmLing/108198825934073'>
       <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/pages/PalmLing/108198825934073'>PalmLing on FaceBook</a>")
    end
end