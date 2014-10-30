class Photo < ActiveRecord::Base
  belongs_to :photographable, polymorphic: true
  dragonfly_accessor :image
end