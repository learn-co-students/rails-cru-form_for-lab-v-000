class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def genre_params
    params.require(:genre).permit(:name)
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
