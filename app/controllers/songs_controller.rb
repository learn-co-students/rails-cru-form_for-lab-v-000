class SongsController < ApplicationController

	def show
		@song = Song.find(params[:id])
	end

	def create
		# binding.pry
		@song = Song.new(post_params)
		@song.save

		redirect_to song_path(@song)
	end

	def edit
		@song = Song.find(params[:id])

	end

	def update
		@song = Song.find(params[:id])
		@song.update(post_params)

		redirect_to song_path(@song)
	end
	
	private

	def post_params
	  params.require(:song).permit(:name, :artist_id, :genre_id)
	end
end
