class PlaysongsController < ApplicationController
    def new
        @playsong = Playsong.new
    end

    def create
        # take in playlist.id and song_id from params[]
        # create new playsong with that
        
    end
end
