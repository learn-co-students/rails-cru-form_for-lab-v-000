class Genre < ActiveRecord::Base

  has_many :songs


end

# Rails Generator Used #
# rails g resource Genre name:string --no-test-framework
