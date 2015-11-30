class Calendar < ActiveRecord::Base
  validates :name, :presence => true
  validates :chosendate, :presence => true, :uniqueness => true
  validates :page_id, :presence => true

  belongs_to :page , :class_name => "Page", :foreign_key => "page_id"
end
