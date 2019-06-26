class ArtistsController < ApplicationController
    #rails g resource Artist name:string bio:text --no-text-framework
    def show
        @artist = Artist.find(params[:id]) 
    end
end
