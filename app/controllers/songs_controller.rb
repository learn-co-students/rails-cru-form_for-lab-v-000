class SongsController < ApplicationController

    def index
    end

    def show
        @song = Song.find(params[:id])   
    end

    def edit
         @song = Song.find(params[:id])       
    end

    def new
      @song = Song.new
    end

end
