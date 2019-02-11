class GenresController < ApplicationController



  class GenresController < ApplicationController

    def index
      @genres = Genre.all
    end

    def new
        # binding.pry
      @genre = Genre.new
      # binding.pry
    end

    def create
      @genre = Genre.new(genre_params)
      @genre.save
      redirect_to genre_path(@genre)
    end

    def show
      # binding.pry
      @genre = Genre.find_by(params[:id])
      # @genre = Genre.find_by(genre_params)

    end

    def edit
      get_genre
    end

    def update
      get_genre
      @genre.update(genre_params)
      @genre.save
      redirect_to genre_path(@genre)
    end

    def delete
      get_genre
      @genre.delete
      redirect_to genre_path
    end
  # cd desktop/flatiron-online/rails-cru-form_for-lab-v-000
    private

      def genre_params(*args)
        # binding.pry
        params.require(:genre).permit(:name)
      end

      def get_genre
        @genre = Genre.find_by(params[:id])
      end


  end

end
