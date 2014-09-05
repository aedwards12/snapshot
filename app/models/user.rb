class User < ActiveRecord::Base
  has_many :bookings
  has_many :listings
  has_many :testimonials
  has_many :photos, as: :photographable
end 