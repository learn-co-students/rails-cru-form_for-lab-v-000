class GenresController < ApplicationController
    def index
    end
    
    def show
        @genre = Genre.find_by(params[:id])
    end
    
    def new
        @genre = Genre.new
    end
    
    def create
	  @genre = Genre.new(genre_params(:name))
	  @genre.save
	  redirect_to genre_path(@genre)
	end
	 
	def update
	  @genre = Genre.find(params[:id])
	  @genre.update(genre_params(:name))
	  redirect_to genre_path(@genre)
	end

	def edit
	  @genre = Genre.find(params[:id])
	end
	
	private
 
 
	# We pass the permitted fields in as *args;
	# this keeps `genre_params` pretty dry while
	# still allowing slightly different behavior
	# depending on the controller action
	def genre_params(*args)
	  params.require(:genre).permit(*args)
	end
end
