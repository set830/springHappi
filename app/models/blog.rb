class Blog < ActiveRecord::Base
  validates :title, :presence => true
  validates :page_id, :presence => true

  belongs_to :page , :class_name => "Page", :foreign_key => "page_id"

  mount_uploader :photo, PhotoUploader
end
