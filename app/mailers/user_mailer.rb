class UserMailer < ActionMailer::Base
  default :from => "info@verbalizeit.com"
  
  def welcome_email(user, version)
    if version == "free"
      mail(:to => user.email, :bcc => "info@verbalizeit.com", :subject => "Thank you for Signing up with VerbalizeIt for Skype!", 
      :content_type => "text/html", :body => "Thank you for signing up for a trial version of <a href='http://skype.verbalizeit.com'>VerbalizeIt for Skype</a>. Your Skype name is: #{user.skype} 
      <br/><br/>
      You will soon receive a Skype request from 'VerbalizeItSpanish'.
      Once you confirm our request, you will be able to make 1 call to access  our global community of translators. 
      You can make additional calls by signing up for the <a href='http://skype.verbalizeit.com'>premium version</a> by visiting <a href='http://skype.verbalizeit.com'>skype.verbalizeit.com</a>.
      <br/><br/>Thank you, <br/><br/>
      The VerbalizeIt Team, <br/><a href='http://www.verbalizeit.com'>VerbalizeIt<a/>. <br/><br/>
      <a href='https://twitter.com/#!/verbalize_it'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/verbalize_it'>Twitter</a><br/>
      <a href='http://www.facebook.com/verbalizeit'>
      <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/verbalizeit'>FaceBook</a>")
    else
      mail(:to => user.email, :bcc => "info@verbalizeit.com", :subject => "Thank you for Signing up with VerbalizeIt for Skype!", 
      :content_type => "text/html", :body => "Thank you for signing up with <a href='http://skype.verbalizeit.com'>VerbalizeIt for Skype</a>. Your Skype name is: #{user.skype} <br/><br/>Once your payment is processed and confirmed, a member of the VerbalizeIt team will follow-up with you with details on how to
      access our global community of translators. Please allow 1 hour for us to respond to you. <br/><br/>Thank you, <br/><br/>
      The VerbalizeIt Team, <br/><a href='http://www.verbalizeit.com'>VerbalizeIt<a/>. <br/><br/>
      <a href='https://twitter.com/#!/verbalize_it'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/verbalize_it'>Twitter</a><br/>
      <a href='http://www.facebook.com/verbalizeit'>
      <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/verbalizeit'>Facebook</a>")
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