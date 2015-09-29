class UsersController < ApplicationController  

  def index

  end

  def show
    @user = user.find(params[:id])
  end  
    
  def new
    @user = User.new 
  end
    
  def create
     @user = User.new(user_params)
    if @user.save
      
      
      UserMailer.registration_confirmation(@user).deliver
      redirect_to root_url
      flash[:success] = "Please confirm your email address to continue"
      
      
    else
    redirect_to root_url
    end
  end
  
 

  def confirm_email
    
    user = User.find_by_confirm_token(params[:id])
    if user
      user.email_activate
      flash[:success] = "Welcome to the Sample App! Your email has been confirmed.
      Please sign in to continue."
      redirect_to root_url
    else
      flash[:error] = "Sorry. User does not exist"
      redirect_to root_url
    end
    
 
  
    
  end
    
    
    
    

  
  def destroy
    
  end
  
  
  
  private
  def user_params
    params.require(:user).permit(:username, :password, :fullname, :email, :affiliation, :gender, :age,) 
  end
    
  
end
