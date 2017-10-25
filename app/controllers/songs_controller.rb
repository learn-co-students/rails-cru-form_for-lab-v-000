class SongsController < ApplicationController
	before_action :song_by_id, only: [:show, :edit, :update]

	def index	
		@songs = Song.all
	end

	def show		
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(song_params)
		if @song.save
			redirect_to song_path(@song)
		else
			render :new
		end
	end


	def edit		
	end

	def update
		if @song.update(song_params)
			redirect_to song_path(@song)
		else
			render :edit				
		end
	end


	private	
	def song_params
		params.require(:song).permit(:name, :aritst_id, :genre_id)
	end

	def song_by_id
		@song = Song.find(params[:id])
	end
end
