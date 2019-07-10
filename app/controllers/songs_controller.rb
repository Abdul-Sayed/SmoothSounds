class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create(song_params)
    redirect_to song_path
  end 

  def show
    @song = Song.find(params[:id])
    @playlist = Playlist.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path
  end 

  def destroy 
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to song_path
  end

private

  def song_params
    params.require(:song).permit(:name, :album, :genre)
  end

end
