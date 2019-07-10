class PlaysongsController < ApplicationController
    def new
        @playsong = Playsong.new
    end

    def create
        # take in playlist_id; @playlist.id and song_id; params[]
        # create new playsong with that
    end
end
