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
        
        redirect_to @user
      else
        render 'new'
      end            
    end

  

end
