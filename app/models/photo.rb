class Photo < ActiveRecord::Base
  belongs_to :photographable, polymorphic: true
  dragonfly_accessor :image
  # has_attached_file :content
  # validates_attachment_content_type :content, :content_type => %w(image/jpeg image/jpg image/png)

end