class Listing < ActiveRecord::Base
  belongs_to :host, class_name: :user, foreign_key: :user_id
  belongs_to :listing
  has_many :tags, through: :listing_tags
  has_many :testimonials
  has_many :photographs, as: :photographable
end