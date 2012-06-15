class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user.user_type = params[:user_type]
    #UserMailer.test_email(self).deliver
  end
    
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Thanks for signing up"
        
      #SEND EMAIL THANKYOU
        
      #redirect_to 'static_pages#thanks'
      #render :action => 'thanks_free'

      #redirect_to 'static_pages#thanks_free'
        
      if request.referer.include? "free"
        render 'thanks_free'  
      else  
        redirect_to @user
      end
      
    else
      render 'new'
    end            
  end

  def new_free
    @user = User.new
    @user.user_type = params[:user_type]
  end
  
  def thanks_free
    redirect_to 'http://www.google.com'
  end

end
