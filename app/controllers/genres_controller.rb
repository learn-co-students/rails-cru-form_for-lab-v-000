class GenresController < ApplicationController
  def create
    @genre =  Genre.create(strong_params(:name))
    if @genre.persisted?
      render :show
    end
  end

  def new
  @genre = Genre.new
  end

  def edit
    @genre = set_student
  end

  def show
    @genre = set_student
  end

  def update
    @genre = set_student
    @genre.update(strong_params(params[:genre]) )
  end


   private

    def set_student
      Genre.find_by(params[:id])
    end

    def strong_params(*args)
  params.require(:genre).permit(args)
    end

end
