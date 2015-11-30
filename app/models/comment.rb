class Comment < ActiveRecord::Base
  validates :name, :presence => true
  validates :body, :presence => true
  validates :page_id, :presence => true

  belongs_to :page , :class_name => "Page", :foreign_key => "page_id"
end
