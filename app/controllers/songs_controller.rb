class SongsController < ApplicationController

def new
end

def create
  @song = Song.new(param_parser(:name, :artist_id, :genre_id ))
  @song.save
  redirect_to song_path(@song)
end

def index
  @songs = Song.all
end

def show
  @song = Song.find(params[:id])
end

def edit
  @song = Song.find(params[:id])
end

def update
  @song = Song.find(params[:id])
  @song.update(param_parser(:name, :artist_id, :genre_id))
  redirect_to song_path(@song)
end

private

def param_parser(*args)
  params.require(:song).permit(*args)
end

end
