class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def to_s
    self.name
  end

end
