class GenresController < ApplicationController
    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    private

    def genre_params(*args)
        params.require(:artist).permit(*args)
    end
end
