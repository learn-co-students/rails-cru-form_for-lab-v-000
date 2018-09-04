class SongsController < ApplicationController
  def show
		@song = Song.find_by_id(params[:id])
  end

	def new
		@song = Song.new
	end

	def create
		song_ = Song.create(post_params(:name, :artist_id, :genre_id))
		redirect_to song_path(song_)
	end

	def edit
		@song = Song.find_by_id(params[:id])
	end

  def update
    song_ = Song.find_by_id(params[:id])
    song_.update(post_params(:name, :artist_id, :genre_id))

    redirect_to song_path(song_)
  end

	def index
		@songs = Song.all
	end

  private

  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action - LOOK INTO THE SPLAT OPERATOR
  def post_params(*args)
    params.require(:song).permit(*args)
  end

end
