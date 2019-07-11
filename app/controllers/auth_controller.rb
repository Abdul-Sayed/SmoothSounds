class AuthController < ApplicationController
    def create
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
          flash[:message] = "Logging in #{@user.name}."
          session[:user_id] = @user.id
          redirect_to playlists_path
        else
          flash[:message] = "Invalid Username or Password."
          redirect_to new_auth_path
        end
    end

    def new

    end 
    
    def destroy
        session[:user_id] = nil
        redirect_to new_auth_path
    end

end
