class Testimonial < ActiveRecord::Base
  belongs_to :listing
  belongs_to :producer, class_name: :user, foreign_key: :user_id
end