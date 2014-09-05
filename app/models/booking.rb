class Booking < ActiveRecord::Base
  belongs_to :producer, class_name: :User, foreign_key: :user_id
  belongs_to :listing
end