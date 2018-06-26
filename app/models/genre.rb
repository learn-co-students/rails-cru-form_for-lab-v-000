class Genre < ActiveRecord::Base
<<<<<<< HEAD
  def show
    @genre = Genre.find_by(id: params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_param)
    redirect_to genre_path(@path)
  end

  def edit
    @genre = Genre.find_by(id: params[:id])
  end

  private

  def genre_param
    params.require(:genre).permit(:name)
  end
=======
>>>>>>> 0aeb368f0cd20552c7be8cfb6987f9f1b5553170
end
