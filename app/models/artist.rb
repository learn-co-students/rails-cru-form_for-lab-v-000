class Artist < ActiveRecord::Base
  has_many :songs

  def to_s
    self.name + ": " + self.bio
  end

end
