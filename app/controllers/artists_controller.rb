class ArtistsController < ApplicationController
  def show
		@artist = Artist.find_by_id(params[:id])
  end

	def new
		@artist = Artist.new
	end
	
	def create
		artist_ = Artist.create(post_params(:name, :bio))
		redirect_to artist_path(artist_)
	end

	def edit
		@artist = Artist.find_by_id(params[:id])	
	end

	def update
		artist_ = Artist.find_by_id(params[:id])
		artist_.update(post_params(:name, :bio))
	
		redirect_to artist_path(artist_)
	end

	private 
	 
	# We pass the permitted fields in as *args;
	# this keeps `post_params` pretty dry while
	# still allowing slightly different behavior
	# depending on the controller action - LOOK INTO THE SPLAT OPERATOR
	def post_params(*args)
		params.require(:artist).permit(*args)
	end

end
