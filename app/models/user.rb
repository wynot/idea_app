class User < ActiveRecord::Base
  has_many :place_relationships
  has_many :place_lists
end
