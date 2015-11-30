class Blog < ActiveRecord::Base
  validates :title, :presence => true
  validates :photo, :presence => true
  validates :body, :presence => true
  validates :page_id, :presence => true

  belongs_to :page , :class_name => "Page", :foreign_key => "page_id"
end
