class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @playlists = @user.playlists
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to playlists_path
  end 
end

private

def user_params
  params.require(:user).permit(:name, :password)
end