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
	  @song = Song.new(song_params(:name))
    #need to add artist, genre to params
	  @song.save
	  redirect_to song_path(@song)
	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
	  @song = Song.find(params[:id])
	  @song.update(song_params(:name, #add other params))
	  redirect_to song_path(@song)
	end


	private

	def edit_song_path_params(*args)
		params.require(:song).permit(*args)
	end
end
