class SongsController < ApplicationController
    belongs_to :artist 
    belongs_to :genre
end
