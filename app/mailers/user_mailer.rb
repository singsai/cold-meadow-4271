class UserMailer < ActionMailer::Base
  default :from => "info@verbalizeit.com"
  
  def welcome_email(user, version)
    if user.preferred_language == "Spanish"
      @lingo = 'VerbalizeItSpanish'
    elsif user.preferred_language == "Mandarin"
      @lingo = 'VerbalizeItMandarin'
    else
      @lingo = 'VerbalizeItHindi'
    end
    
    if version == "free"
      mail(:to => user.email, :bcc => "info@verbalizeit.com", :subject => "Thank you for Signing up with VerbalizeIt for Skype!", 
      :content_type => "text/html", :body => "Thank you for signing up for a trial version of <a href='http://skype.verbalizeit.com'>VerbalizeIt for Skype</a>. Your Skype name is: #{user.skype} 
      <br/>
<ul>
    <li>
      To access a VerbalizeIt translator, please follow these brief instructions:
    </li>
    <li>
      You can either send a Skype request to '#{@lingo}' or await a request from '#{@lingo}'
    </li>
    <li>  
      Dial your contact on Skype
    </li>
    <li>
      Select the "+" button to add a caller
    </li>
    <li>
      Add the '#{@lingo}' contact to your conversation
    </li>
    <li>
      Ask the translator to translate between you and the other participant. Enjoy!
    </li>
    <li>
      To view a brief explanatory vide on how to use VerbalizeIt for Skype, please visit <a href='http://youtu.be/9VyXRyRtWmY'>http://youtu.be/9VyXRyRtWmY</a> 
    </li
</ul>      
You can make additional calls by signing up for the <a href='http://skype.verbalizeit.com'>premium version</a> by visiting <a href='http://skype.verbalizeit.com'>skype.verbalizeit.com</a>.
      <br/><br/>Thank you, <br/><br/>
      The VerbalizeIt Team, <br/><a href='http://www.verbalizeit.com'>VerbalizeIt<a/>. <br/><br/>
      <a href='https://twitter.com/#!/verbalize_it'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/verbalize_it'>Twitter</a><br/>
      <a href='http://www.facebook.com/verbalizeit'>
      <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/verbalizeit'>Facebook</a>")
    else
      mail(:to => user.email, :bcc => "info@verbalizeit.com", :subject => "Thank you for Signing up with VerbalizeIt for Skype!", 
      :content_type => "text/html", :body => "Thank you for signing up with <a href='http://skype.verbalizeit.com'>VerbalizeIt for Skype</a>. Your Skype name is: #{user.skype} <br/>
You chose #{user.preferred_language}.
<ul>
    <li>
      To access a VerbalizeIt translator, please follow these brief instructions:
    </li>
    <li>
      You can either send a Skype request to '#{@lingo}' or await a request from '#{@lingo}'
    </li>
    <li>  
      Dial your contact on Skype
    </li>
    <li>
      Select the "+" button to add a caller
    </li>
    <li>
      Add the '#{@lingo}' contact to your conversation
    </li>
    <li>
      Ask the translator to translate between you and the other participant. Enjoy!
    </li>
    <li>
      To view a brief explanatory vide on how to use VerbalizeIt for Skype, please visit <a href='http://youtu.be/9VyXRyRtWmY'>http://youtu.be/9VyXRyRtWmY</a> 
    </li    
</ul>
Your payment will soon be processed and confirmed.<br/><br/>Thank you, <br/><br/>
      The VerbalizeIt Team, <br/><a href='http://www.verbalizeit.com'>VerbalizeIt<a/>. <br/><br/>
      <a href='https://twitter.com/#!/verbalize_it'><img src='http://dl.dropbox.com/u/3722777/icon/twitter_16.png' /></a><span> </span><a href='https://twitter.com/#!/verbalize_it'>Twitter</a><br/>
      <a href='http://www.facebook.com/verbalizeit'>
      <img src='http://therohanaurora.com/files/downloads/icon/facebook_16.png' /></a><span> </span><a href='http://www.facebook.com/verbalizeit'>Facebook</a>")
    end
  end
end