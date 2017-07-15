class GenresController < ApplicationController

def new
    @genre = Genre.new
end

def create
    @genre = Genre.new(form_params(:name))
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
    @genre.update(form_params(:name))
    @genre.save
    redirect_to genre_path(@genre)
end


private
def form_params(*args)
    params.require(:genre).permit(args)
    
end


end#eoc
