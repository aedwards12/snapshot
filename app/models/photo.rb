class Photo < ActiveRecord::Base
  belongs_to :photographable, polymorphic: true
end