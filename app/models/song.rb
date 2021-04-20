class Song < ApplicationRecord
    belongs_to :artist 
    belongs_to :genre 

    def artist_name
        self.artist 
    end
end
