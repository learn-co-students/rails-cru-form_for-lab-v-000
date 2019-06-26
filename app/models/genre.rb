class Genre < ApplicationRecord
    #made using rails g model Genre name:string  --no-test-framework
    has_many :songs
end
