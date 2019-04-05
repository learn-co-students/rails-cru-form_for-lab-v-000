class GenresController < ApplicationController

  def show
    @genre = Genre.find_by(params[:id])
  end

end
