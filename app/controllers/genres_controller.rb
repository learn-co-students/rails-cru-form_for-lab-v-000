class GenresController < ApplicationController
    def show
        @genre = set_genre
    end
    
    def new
        @genre = Genre.new
    end
    
    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end
    
    def edit
        @genre = set_genre
    end
    
    def update
        @genre = set_genre
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end
    
    private 
    # Use callbacks to share common setup or constraints between actions.
    def set_genre
      @genre = Genre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genre_params
      params.require(:genre).permit(:name)
    end
end
