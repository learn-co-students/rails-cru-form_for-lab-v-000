class Artist < ActiveRecord::Base

  has_many :songs



end

# Rails Generator Used #
# rails g resource Artist name:string bio:string --no-test-framework
