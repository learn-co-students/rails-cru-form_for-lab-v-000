class Genre < ActiveRecord::Base
	has_many :genres, :dependent => :destroy
	has_many :songs, through: :genres
end
