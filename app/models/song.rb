class Song < ActiveRecord::Base

	belongs_to :song
	belongs_to :genre

	def artist
		Artist.find(artist_id)
	end

	def genre
		Genre.find(genre_id)
	end
	
end
