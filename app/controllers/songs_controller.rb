
class SongsController < ApplicationController
  before_action :find_song , only: [:show, :update]
  
  def show 
  end
  
  def create
    @song = Song.new(song_params(:name, ))
  end
  
  def update
  end 
  
  private
  
    def 
    end
    
    def 
    end
    
end
