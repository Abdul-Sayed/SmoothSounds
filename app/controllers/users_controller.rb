class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @playlists = @user.playlists
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create
    redirect_to user_path
  end 
end
