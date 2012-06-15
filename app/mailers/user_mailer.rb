class UserMailer < ActionMailer::Base
  default :from => "info@palmling.com"
  
  def welcome_email(user, version)
    if version == "free"
      mail(:to => user.email, :bcc => "info@palmling.com", :subject => "Thank you for Signing up with PalmLing for Skype!", 
      :content_type => "text/html", :body => "Thank you for signing up for a trial version of <a href='http://skype.palmling.com'>PalmLing for Skype</a>. Your Skype name is: #{user.skype} 
      <br/><br/>
      Your trial version will expire in one hour. To get started, simply send a Skype request to <i>PalmLingSpanish</i>.<br/><br/>
      Once we confirm your request, you will have access for one hour to
      our global community of translators. Please don't abuse this privilege, and don't worry, your trial version will not start until we confirm your request. Please allow 1 hour for us to respond to you. 
      If you would like to sign up for the <a href='http://skype.palmling.com'>premium version</a>, please visit: <a href='http://skype.palmling.com'>skype.palmling.com</a>.
      <br/><br/>Thank you, <br/><br/>
      The PalmLing Team, <br/><a href='http://www.palmling.com'>PalmLing<a/>. <br/><br/>
      <a href='https://twitter.com/#!/palmling'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/palmling'>Twitter</a><br/>
      <a href='http://www.facebook.com/pages/PalmLing/108198825934073'>
      <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/pages/PalmLing/108198825934073'>FaceBook</a>")
    else
      mail(:to => user.email, :bcc => "info@palmling.com", :subject => "Thank you for Signing up with PalmLing for Skype!", 
      :content_type => "text/html", :body => "Thank you for signing up with <a href='http://skype.palmling.com'>PalmLing for Skype</a>. Your Skype name is: #{user.skype} <br/><br/>Once your payment is processed and confirmed, a member of the PalmLing team will follow-up with you with details on how to
      access our global community of translators. Please allow 1 hour for us to respond to you. <br/><br/>Thank you, <br/><br/>
      The PalmLing Team, <br/><a href='http://www.palmling.com'>PalmLing<a/>. <br/><br/>
      <a href='https://twitter.com/#!/palmling'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/palmling'>Twitter</a><br/>
      <a href='http://www.facebook.com/pages/PalmLing/108198825934073'>
      <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/pages/PalmLing/108198825934073'>Facebook</a>")
    end
  end

  # def test_email(user)
  #     mail(:to => 'maxswell@gmail.com', :bcc => "nick@palmling.com", :subject => "Thank you for Signing up with PalmLing for Skype!", :content_type => "text/html",
  #      :body => "Thank you for signing up with <a href='http://www.palmling.com'>PalmLing for Skype</a>. Your Skype name is: Kevin <br/>
  #      <br/>Once your payment is processed and confirmed, a member of the PalmLing team will follow-up with you with details on how to
  #      access our global community of translators. Please allow 1 hour for us to respond to you. <br/><br/>Thank you, <br/><br/>
  #      The PalmLing Team, <br/><a href='http://www.palmling.com'>PalmLing<a/>. <br/><br/>
  #      <a href='https://twitter.com/#!/palmling'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/palmling'>PalmLing on Twitter</a><br/>
  #      <a href='http://www.facebook.com/pages/PalmLing/108198825934073'>
  #      <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/pages/PalmLing/108198825934073'>PalmLing on FaceBook</a>")
  #   end
end