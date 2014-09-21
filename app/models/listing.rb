class Listing < ActiveRecord::Base
	include PgSearch
  # multisearchable :against => [:address]

  pg_search_scope :listing_search, :against => [:address], :associated_against => {
    :tags => [:name]
  }

  pg_search_scope :partial_search, :against => {
    :address => 'A'
    },
    :associated_against => {
      :tags => [:name]
    },
    :using => {
      :tsearch => {:prefix => true }
    }
  #add description after address for search for occasion 

  geocoded_by :address
  after_validation :geocode

  belongs_to :host, class_name: :User, foreign_key: :user_id
  has_many :bookings
  has_many :tagables
  has_many :tags, through: :tagables
  has_many :testimonials
  has_many :photos, as: :photographable


end