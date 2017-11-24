class Song < ActiveRecord::Base
    belongs_to :genre
    belongs_to :artist
    
    validates :name, presence: true
end
