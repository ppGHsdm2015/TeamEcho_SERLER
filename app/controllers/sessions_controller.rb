def create
      user = User.where(username: params[:username])
      if user && user.authenticate(params[:password])
        if user.email_confirmed
          session[:user_id]=user.id
          redirect_to root_url, notice: "Logged in"
        else
          flash[:error] = 'Please activate your account by following the 
          instructions in the account confirmation email you received to proceed'
        end
      else
      redirect_to root_url, flash: "Username or password was wrong"
      end
    exit
    
    def destroy
      session.delete(:user_id)
      redirect_to root_url, notice: "Successfully logged out"
    end
    
end  