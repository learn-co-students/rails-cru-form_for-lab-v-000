class Genre < ActiveRecord::Base
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
end
