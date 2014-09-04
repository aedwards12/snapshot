class Booking < ActiveRecord::Base
  belongs_to :producer, class_name: :user, foreign_key :user_id
  has_one :listing
end