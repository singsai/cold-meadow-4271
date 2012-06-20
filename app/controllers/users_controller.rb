class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user.user_type = params[:user_type]
    #UserMailer.welcome_email(self).deliver
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
        UserMailer.welcome_email(@user, "free").deliver
        render 'thanks_free'  
      else  
        UserMailer.welcome_email(@user, "regular").deliver
        redirect_to @user
      end
      
    else      
      if request.referer.include? "free"

      # rescue
      #   render :template => 'application/already_registered', :status => :not_found
        render 'new_free'
      else
        render 'new'
      end
    end            
  end

  def new_free
    @user = User.new
    @user.user_type = params[:user_type]
  end
  
  def upgrade
  end
  
  # def edit
  # end

  # def update
  #   if @user.update_attributes(params[:user])
  #     flash[:success] = "Profile updated"
  #     sign_in @user
  #     redirect_to @user
  #   else
  #     render 'edit'
  #   end
  # end  
  # def new_free_hr
  #   @user = User.new
  #   @user.user_type = params[:user_type]
  # end  
end
