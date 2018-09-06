class ArtistsController < ApplicationController
  def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
	  @artist = Artist.new
	  @artist.name = params[:artist][:name]
    @artist.bio = params[:artist][:bio]
	  @artist.save
	  redirect_to artist_path(@artist)
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
	  @artist = Artist.find(params[:id])
    puts @artist.name
	  @artist.update(post_params)
    puts @artist.name
    @artist.save
    puts params
	  redirect_to artist_path(@artist)
	end
  private
  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def post_params
    params.require(:artist).permit(:name, :bio)
  end
end
