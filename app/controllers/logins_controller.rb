class LoginsController < ApplicationController
    
    def new
        
    end
    
    def create
        user=User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id]=user.id
            flash[:success]='you are logged in'
            redirect_to root_path
        else
        flash.now[:danger] ='Your email address or password does not match' 
        render 'new'
        end
        
    end
    
    def destroy
        session[:user_id]=nil
        flash[:success] = 'you have logged out'
        redirect_to root_path
    end
end