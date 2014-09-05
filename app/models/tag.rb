class Tag < ActiveRecord::Base
  has_many :tagables	
  has_many :listings, through: :tagables
end