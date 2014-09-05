class Testimonial < ActiveRecord::Base
  belongs_to :listing
  belongs_to :producer, class_name: :User, foreign_key: :user_id
end