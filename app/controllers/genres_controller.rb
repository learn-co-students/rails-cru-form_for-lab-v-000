
class GenresController < ApplicationController
  before_action :find_genre , only: [:update, :show]
  
  def show 
  end
  
  def create
  end
  
  def update
  end 
  
  private
  
    def find_genre
      @genre = Genre.find(params[:id])
    end
    
    def genre_params
      
    end
  
end
