class GenresController < ApplicationController
  def new # implicitly renders views/genres/new.html.erb view file (form to create a new genre)
    @genre = Genre.new # instantiate @genre instance to pass to view file (because it's arg of form_for)
  end

  def create # post '/genres' (which receives data submitted in create form) is mapped to #create action
    @genre = Genre.new(genre_params) # instantiate genre instance with attributes mass assigned from strong params, which was returned by calling #genre_params
    @genre.save # save instance to DB by inserting its row representation into genres table
    redirect_to genre_url(@genre) # redirect to show page that displays genre just created
  end

  def show # implicitly renders views/genres/show.html.erb view file to show a single genre
    @genre = Genre.find(params[:id]) # find genre instance by its id value, which replaces :id route variable in get '/genres/:id' show page URL
  end

  def edit # implicitly renders views/genres/edit.html.erb view file, which presents form to edit genre
    @genre = Genre.find(params[:id]) # find genre instance to be edited by its id (whatever replaces :id route variable in '/genres/:id/edit' URL)
  end

  def update
    @genre = Genre.find(params[:id]) # find genre being edited by its id (whatever replaces :id route variable in patch '/genres/:id')
    @genre.update(genre_params) # update genre attributes from strong params and save changes to DB
    redirect_to genre_url(@genre) # redirect to show page to show genre just edited
  end

  private

    def genre_params
      params.require(:genre).permit(:name)
    end
  # private method #genre_params returns sanitized, strong params
  # params must have top-level "genre" key that points to (and stores) genre hash nested inside params hash
  # within genre hash (nested inside params) we only permit the "name" key
  # only 1 form field is permitted, corresponding to the sole name attribute of a genre instance
end
