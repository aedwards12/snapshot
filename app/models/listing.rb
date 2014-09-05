class Listing < ActiveRecord::Base
  belongs_to :host, class_name: :User, foreign_key: :user_id
  has_many :bookings
  has_many :tags, through: :listing_tags
  has_many :testimonials
  has_many :photographs, as: :photographable
end