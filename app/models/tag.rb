class Tag < ActiveRecord::Base
  has_many :listings, through: :listing_tags
end