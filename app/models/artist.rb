class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, :through => :songs

    def to_s 
        self.name + " " + self.bio
    end

end
