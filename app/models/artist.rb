class Artist < ApplicationRecord #inherits from ApplicationRecord for ActiveRecord::Base
    has_many :songs
end
