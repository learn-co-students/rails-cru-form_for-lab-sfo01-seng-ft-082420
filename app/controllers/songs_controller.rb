class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        @artist = Artist.find(song_params[:artist_id])
        @genre = Genre.find(song_params[:genre_id])
        @song = Song.create(name: song_params[:name], artist_id: @artist.id, genre_id: @genre.id)
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)
        redirect_to song_path(@song)
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

end
