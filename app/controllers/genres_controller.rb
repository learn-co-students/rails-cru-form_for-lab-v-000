class GenresController < ApplicationController
<<<<<<< HEAD
  
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)
    @genre.save
    
    redirect_to genre_path(@genre)
  end
  
  def show
    @genre = Genre.find(params[:id])
  end
  
    def edit
      @genre = Genre.find(params[:id])
    end
  
    def update
       @genre = Genre.find(params[:id])
       @genre.update(genre_params)
       @genre.save
       
       redirect_to genre_path(@genre)
    end
  
    
  private
  def genre_params
		params.require(:genre).permit(:name)
	end
=======
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))

    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
		@genre = Genre.find(params[:id])
	end

	def update
	  @genre = Genre.find(params[:id])
	  @genre.update(params.require(:genre).permit(:name))
	  redirect_to genre_path(@genre)
  end
>>>>>>> e302cf340e3215d1e2347951f277cf5154a2dcd7
end
