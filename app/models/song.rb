class Song < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
    belongs_to :genre 
    belongs_to :artist
end
