class Song < ActiveRecord::Base
  def genre
    Genre.find(self.genre_id)
  end

  def artist
    Artist.find(self.artist_id)
  end
end
