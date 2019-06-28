class Artist < ApplicationRecord
    #made using rails g model Artist name:string bio:text  --no-test-framework
    #rails g is a generator
    has_many :songs
end
