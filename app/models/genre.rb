class Genre < ActiveRecord::Base
  has_many :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end
end
