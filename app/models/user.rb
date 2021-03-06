class User < ActiveRecord::Base
	has_many :bookings
  has_many :listings
  has_many :testimonials
  has_many :photos, as: :photographable
  accepts_nested_attributes_for :photos

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
