class User < ActiveRecord::Base
  has_many :place_relationships
end
